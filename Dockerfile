#install tomcat
FROM tomcat:9.0-jdk8-temurin
#remove the existing war file 
RUN rm -rf /usr/local/tomcat/webapps/*
#copy the war file
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
#port to run
EXPOSE 8080
#to start the tomcat server
CMD ["catalina.sh", "run"]
