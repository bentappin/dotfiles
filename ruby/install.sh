brew install rbenv

eval "$(rbenv init -)"

RUBY_VERSION=`rbenv install -l | awk -F '.' '
   /^[[:space:]]*[0-9]+\.[0-9]+\.[0-9]+[[:space:]]*$/ {
      if ( ($1 * 100 + $2) * 100 + $3 > Max ) { 
         Max = ($1 * 100 + $2) * 100 + $3
         Version=$0
         }
      }
   END { print Version }'`
rbenv install $RUBY_VERSION
rbenv rehash

rbenv global $RUBY_VERSION
gem install sass
rbenv rehash
