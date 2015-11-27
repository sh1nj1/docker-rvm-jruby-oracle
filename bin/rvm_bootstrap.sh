#!/usr/bin/env bash
# Provided by the RVM folks as a way to do a multi-user setup.
# If you want to add users other than root, you'll need to run
# the script below* for that user.

JRUBY_VERSION=$1

# Install git
\curl -sSL https://get-git.rvm.io | sudo bash

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | sudo bash -s stable

# Install some Rubies
source "/usr/local/rvm/scripts/rvm"
command rvm install jruby-${JRUBY_VERSION}

# * Set the ruby defaults for root and start using jRuby
source /root/set_up_rvm_user.sh root ${JRUBY_VERSION}

# Let's be real: you're probably going to need this guy.
gem install bundler
