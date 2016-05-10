FROM ubuntu:16.04

# install aws-cli java8
RUN apt update -y && \
    apt install -y awscli software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt update -y && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java8-installer && \
    apt clean

# set LANG and JAVA_HOME
ENV LANG en_US.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
