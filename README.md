# Java Hello World with Maven

## Deskripsi
Aplikasi Hello World sederhana menggunakan Java dan Maven.

## Teknologi
- Java 17
- Maven
- JUnit 4
- GitHub Actions
- CodeQL
- GitHub Packages

## CI/CD Pipeline
### Continuous Integration
Workflow berjalan saat Pull Request ke branch main.

### Continuous Testing
JUnit dijalankan menggunakan Maven Test.

### Continuous Inspection
CodeQL melakukan static code analysis.

### Continuous Deployment
Artifact dipublikasikan ke GitHub Packages saat Release dibuat.

## Cara Menjalankan
mvn package
java -jar target/jb-hello-world-maven-0.2.0.jar
