FROM tomcat:10.1-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat webapps
COPY java-frontend-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
