FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8080
COPY target/myapp-0.1.0.war /usr/local/tomcat/webapps
