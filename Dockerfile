FROM tomcat:8.0
COPY /opt/docker/webapp.war /usr/local/tomcat/webapps
