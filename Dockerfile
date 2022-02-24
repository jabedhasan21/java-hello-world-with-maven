FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps
ENV "CATALINA_OPTS=-Dconfig.properties=/app/config.properties"
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]
