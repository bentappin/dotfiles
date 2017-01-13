#!/usr/bin/env bash
#
# RVM
#
# This installs RVM and some packages.

# Check for RVM, install if not present
if [ -z `which rvm` ];
then
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable --ruby
fi

rvm_source="$HOME/.rvm/scripts/rvm"
if [ -f $rvm_source ];
then
  source $rvm_source
  gem install sass
fi
