FROM tomcat:8.0.20-jre8
MAINTAINER Ashok <ashok@oracle.com>
EXPOSE 8080
COPY target/welcomeapp.war /usr/local/tomcat/webapps/welcomeapp.war