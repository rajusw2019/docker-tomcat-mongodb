FROM tomcat

MAINTAINER raju

ENV CATALINA_HOME /usr/local/tomcat

ENV PATH $CATALINA_HOME/bin:$PATH

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

ADD petclinic.war $CATALINA_HOME/webapps/petclinic.war

ADD xrebel.jar $CATALINA_HOME/webapps/xrebel.jar

EXPOSE 8080


