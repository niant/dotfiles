#!/bin/bash

# Install Homebrew first:
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

brew install git
brew install mongodb
brew install wget
brew install irssi
brew install ack
brew install youtube-dl

brew install phantomjs
brew install casperjs --devel # casperjs installation

# normal gui installations
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install dropbox
brew cask install sublime-text
brew cask install vlc

# PHP setup
# brew tap homebrew/dupes
# brew tap josegonzalez/homebrew-php
# brew install php54 # remember to load with httpd.conf
# brew install josegonzalez/php/composer
#

# PHP environment
# brew tap homebrew/dupes
# brew tap josegonzalez/homebrew-php
# brew install php54
# brew install mysql
## Install MySQL
# unset TMPDIR
# mysql_install_db --verbose --user=whoami --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp

# Remove outdated versions from the cellar
brew cleanup