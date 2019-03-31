FROM centos:7

MAINTAINER surya <csuryaprathap@gmail.com>

RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all

RUN wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz -P /var/tmp

RUN tar -zxf /var/tmp/jboss-as-7.1.1.Final.tar.gz -C /opt

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]

