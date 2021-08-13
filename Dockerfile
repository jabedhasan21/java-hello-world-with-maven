FROM maven:3.6.3-ibmjava-8-alpine AS build

COPY . .
RUN mvn -f pom.xml clean package install



