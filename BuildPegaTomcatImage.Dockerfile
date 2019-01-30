FROM tomcat:9.0.10-jre8
LABEL version="1.0"
LABEL description="Pega7.4 tomcat web application server"
RUN mkdir -p /usr/data/
ADD web.xml /usr/local/tomcat/conf/ 
ADD prconfig.xml /usr/local/
ADD prlog4j2.xml /usr/local/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/conf/
ADD setenv.sh /usr/local/tomcat/bin/
ADD prhelp.war /usr/local/tomcat/webapps/prhelp.war
ADD META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INT/context.xml
ADD prsysmgmt.war /usr/local/tomcat/webapps/prsysmgmt.war
ADD prweb.war /usr/local/tomcat/webapps/prweb.war
ADD mssql-jdbc-6.2.2.jre8.jar /usr/local/tomcat/lib/mssql-jdbc-6.2.2.jre8.jar
EXPOSE 8080
