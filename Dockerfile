FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN npm install serverless -g

RUN cd /opt &&\
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz &&\
tar xvzf jdk-8u121-linux-x64.tar.gz &&\
rm jdk-8u121-linux-x64.tar.gz

ENV JAVA_HOME /opt/jdk1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin
