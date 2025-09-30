FROM openjdk:17-jdk-slim

# Tomcat install karo (10.1 ka latest version)
RUN apt-get update && apt-get install -y wget && \
    wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz && \
    tar xzf apache-tomcat-10.1.30.tar.gz && \
    mv apache-tomcat-10.1.30 /usr/local/tomcat

# WAR file copy karo
COPY Student.war /usr/local/tomcat/webapps/

# Tomcat start
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
