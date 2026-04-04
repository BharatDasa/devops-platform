#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps


FROM tomcat:11-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your built WAR file
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
