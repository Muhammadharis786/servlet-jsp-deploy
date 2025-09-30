# Java runtime
FROM openjdk:17-jdk-slim

# Tomcat install karo
RUN apt-get update && apt-get install -y wget && \
    wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz && \
    tar xzf apache-tomcat-9.0.91.tar.gz && \
    mv apache-tomcat-9.0.91 /usr/local/tomcat

# WAR file ko Tomcat ke webapps folder me copy karo
COPY Student.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat run command
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

# Railway default port
EXPOSE 8080
