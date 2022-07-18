FROM tomcat:latest
COPY /opt/docker/*.war /usr/local/tomcat/webapps
