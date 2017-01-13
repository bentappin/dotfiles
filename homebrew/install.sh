#!/usr/bin/env bash
#
# Homebrew
#
# This installs Homebrew and some packages.

# Check for Homebrew, install if not present
if [ -z `which brew` ];
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Disable brew analytics
brew analytics off

# Install homebrew packages
# First install some libs and things that may or may not need to be installed before other things...
brew install \
gcc \
pkg-config \
flac \
lame \
libjpeg \
little-cms2 \
swig \
freetype \
watch \
wget

# Now install some "bigger" things...
brew install \
ffmpeg \
git \
gnupg \
grc \
libsndfile \
lynx \
openssl \
postgresql \
redis \
rabbitmq \
mp3gain \
mp3info \
youtube-dl \
p7zip \
cdrtools

brew install gettext && brew link gettext --force

# Install brew-cask for binary installs
brew tap caskroom/cask
brew tap caskroom/versions

# Install native apps
brew cask install \
1password \
firefox \
flux \
google-chrome \
handbrake \
iterm2-beta \
launchrocket \
skype \
slack \
spectacle \
spotify \
sublime-text-dev \
transmission \
vagrant \
virtualbox \
vlc

exit 0
