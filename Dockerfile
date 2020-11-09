FROM bluedata/centos7:4.1

RUN ! test -d /opt/configscripts || mkdir /opt/configscripts/

COPY appconfig.tgz /opt/configscripts/

RUN yum install -y java-11-openjdk

COPY nifi-1.12.1-bin.tar.gz /opt

RUN cd /opt && \
    tar xf nifi-1.12.1-bin.tar.gz && \
    rm nifi-1.12.1-bin.tar.gz
