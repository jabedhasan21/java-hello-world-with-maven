#!/bin/bash
# scripts/auto-release.sh
# Automatic version bumping, tag creation, and GitHub release publishing

set -e

# Warna untuk output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}=== Starting Automatic Release ===${NC}"

# 1. Extract current version from pom.xml
CURRENT_VERSION=$(grep -m1 "<version>" pom.xml | sed 's/.*<version>\(.*\)<\/version>.*/\1/')
echo -e "${YELLOW}Current version: ${GREEN}$CURRENT_VERSION${NC}"

# 2. Calculate new version (bump minor)
MAJOR=$(echo $CURRENT_VERSION | cut -d. -f1)
MINOR=$(echo $CURRENT_VERSION | cut -d. -f2)
PATCH=$(echo $CURRENT_VERSION | cut -d. -f3)

NEW_MINOR=$((MINOR + 1))
NEW_VERSION="$MAJOR.$NEW_MINOR.0"

echo -e "${YELLOW}New version: ${GREEN}$NEW_VERSION${NC}"

# 3. Update pom.xml
sed -i "s/<version>$CURRENT_VERSION<\/version>/<version>$NEW_VERSION<\/version>/" pom.xml
echo -e "${GREEN}✓ Updated pom.xml${NC}"

# 4. Configure git
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

# 5. Commit version bump
git add pom.xml
git commit -m "chore: bump version to $NEW_VERSION [skip ci]"
git push origin master
echo -e "${GREEN}✓ Version commit pushed${NC}"

# 6. Create and push tag
git tag -a "v$NEW_VERSION" -m "Release version $NEW_VERSION"
git push origin "v$NEW_VERSION"
echo -e "${GREEN}✓ Release tag v$NEW_VERSION created and pushed${NC}"

# 7. Create GitHub Release via API
echo -e "${YELLOW}Creating GitHub Release...${NC}"

RELEASE_RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  "https://api.github.com/repos/$GITHUB_REPOSITORY/releases" \
  -d "{\"tag_name\":\"v$NEW_VERSION\",\"name\":\"Release v$NEW_VERSION\",\"body\":\"Automatic release version $NEW_VERSION\",\"draft\":false,\"prerelease\":false}")

if echo "$RELEASE_RESPONSE" | grep -q "\"id\""; then
  echo -e "${GREEN}✓ Release v$NEW_VERSION published to GitHub${NC}"
else
  echo -e "${RED}✗ Failed to create release${NC}"
  echo "$RELEASE_RESPONSE"
  exit 1
fi

echo -e "${GREEN}=== Automatic Release Completed ===${NC}"
echo -e "${GREEN}Release: https://github.com/$GITHUB_REPOSITORY/releases/tag/v$NEW_VERSION${NC}"
