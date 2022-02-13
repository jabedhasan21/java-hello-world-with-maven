FROM tomcat:latest
EXPOSE 8080
COPY /harness/target/myapp-0.1.0.war .
mv myapp-0.1.0.war app.war
COPY app.war /usr/local/tomcat/webapps
