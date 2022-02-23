FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]
