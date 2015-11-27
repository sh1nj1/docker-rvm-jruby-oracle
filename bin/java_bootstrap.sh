#!/bin/sh

# Add the repository
sudo add-apt-repository -y ppa:webupd8team/java

# Refresh our repos
sudo apt-get update

# Add this to accept the Oracle licensing terms without being confronted with a GUI during installation.
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

# Install the JDK and set all the normal defaults
sudo apt-get install -y oracle-java8-installer oracle-java8-set-default

sudo rm -rf /var/lib/apt/lists/*
sudo rm -rf /var/cache/oracle-jdk8-installer

