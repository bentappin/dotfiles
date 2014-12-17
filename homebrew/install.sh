#!/usr/bin/env bash
#
# Homebrew
#
# This installs Homebrew and some packages.

# Check for Homebrew, install if not present
if [ -z `which brew` ];
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
# First install some libs that may or may not need to be installed before other things...
brew install gcc flac lame libjpeg swig freetype watch
# Now install some "bigger" things...
brew install ffmpeg git gnupg grc libsndfile lynx mercurial openssl postgresql rabbitmq wget

brew install gettext && brew link gettext --force

# Install brew-cask for binary installs
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask

# Install apps to /Applications
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install native apps
brew cask install alfred
brew cask install colors
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install handbrake
brew cask install imageoptim
brew cask install iterm2-beta
brew cask install launchrocket
brew cask install lightpaper
brew cask install limechat
brew cask install onepassword
brew cask install skype
brew cask install sublime-text-dev
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Download the precise vagrant box in advance if user wishes.
echo "Do you want to add the precise vagrant box now? (It could take 30 minutes.) [y/N]:"
read -t 10 add_precise

if [ "$add_precise" == "y" ] || [ "$add_precise" == "Y" ]; then
  echo "Adding precise32 vagrant box..."
  vagrant box add precise32 http://files.vagrantup.com/precise32.box
else
  echo "Skipping..."
fi

exit 0
