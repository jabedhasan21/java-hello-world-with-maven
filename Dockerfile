FROM maven:3.6.3-ibmjava-8-alpine AS build

COPY src src
COPY pom.xml .
RUN mvn -f pom.xml clean package install
WORKDIR /target
RUN ls
run pwd


