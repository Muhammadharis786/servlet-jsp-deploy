# Tomcat 10.1 + Java 17 official image
FROM tomcat:10.1-jdk17

# Pehle se aayi hui default apps remove karo (manager, examples, etc.)
RUN rm -rf /usr/local/tomcat/webapps/*

# Apni WAR file copy karo
COPY Student.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat ka default CMD chalega
EXPOSE 8080
