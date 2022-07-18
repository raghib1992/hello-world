FROM tomcat:8.0
COPY /opt/docker/*.war /usr/local/tomcat/webapps
