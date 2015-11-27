FROM ubuntu
# File Author / Maintainer
MAINTAINER Soonoh Jung <soonohjung@mytrum.com>

RUN apt-get update
RUN apt-get -y install vim curl git software-properties-common

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# These are the scripts we need, not the scripts we deserve.
ADD bin/rvm_bootstrap.sh /root/rvm_bootstrap.sh
ADD bin/java_bootstrap.sh /root/java_bootstrap.sh
ADD bin/set_up_rvm_user.sh /root/set_up_rvm_user.sh
RUN chmod +x /root/rvm_bootstrap.sh /root/java_bootstrap.sh
RUN /root/java_bootstrap.sh
RUN /root/rvm_bootstrap.sh 9.0.4.0
