FROM tomcat:9
RUN rm -rf /usr/local/tomcat/webapps/*
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["startup.sh","run"]
ENTRYPOINT ["catalina.sh","run"]
