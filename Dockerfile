FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8080
COPY target/myapp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
