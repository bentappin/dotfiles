#!/usr/bin/env bash
#
# RVM
#
# This installs RVM and some packages.

# Check for RVM, install if not present
if [ -z `which rvm` ];
then
  curl -sSL https://get.rvm.io | bash -s stable
fi

rvm_source="$HOME/.rvm/scripts/rvm"
if [ -f $rvm_source ];
then
  source $rvm_source
  gem install sass
fi