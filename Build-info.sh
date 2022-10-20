 #!/bin/bash
 cat pom.xml | grep -i java.version | awk -F '>' '{ print $2 }' | awk -F '<' '{ print $1}'
