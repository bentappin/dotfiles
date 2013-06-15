#!/usr/bin/env bash
#
# Homebrew
#
# This installs Homebrew and some packages.

# Check for Homebrew, install if not present
if [ -z `which brew` ];
then
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

# Install homebrew packages
brew install python --framework
brew install wget libjpeg gfortran swig git ffmpeg

# Install brew-cask for binary installs
brew tap phinze/homebrew-cask
brew install brew-cask

# Install native apps
brew cask install alfred
brew cask install dropbox
brew cask install firefox
brew cask install f-lux
brew cask install google-chrome
brew cask install handbrake
brew cask install imageoptim
brew cask install iterm2
brew cask install one-password
brew cask install sublime-text
brew cask install textual
brew cask install transmission
brew cask install true-crypt
brew cask install virtualbox
brew cask install vlc

exit 0