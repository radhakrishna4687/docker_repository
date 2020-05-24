FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install openjdk-8-jre -y
RUN echo 'JAVA_HOME=/usr/' >> .bashrc
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.tar.gz /tmp
RUN cd /tmp && tar -xvzf apache-tomcat-8.5.55.tar.gz
RUN cd /tmp && mv apache-tomcat-8.5.55 /opt/
EXPOSE 8080
ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /opt/apache-tomcat-8.5.55/webapps/
CMD ['/opt/apache-tomcat-8.5.55/bin/catalina.sh','run']