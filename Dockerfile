FROM java
MAINTAINER jack
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://ftp.mirror.tw/pub/apache/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz

RUN tar zxvf apache-tomcat-8.5.51.tar.gz

CMD ["/apache-tomcat-8.5.51/bin/catalina.sh", "run"]

EXPOSE 8080
