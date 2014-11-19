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
brew install tmux
brew install reattach-to-user-namespace # http://savanne.be/804-running-karma-and-chrome-under-tmux-on-osx/
brew install zsh
brew install vim

brew install phantomjs
# brew install casperjs --devel # casperjs installation

# normal gui installations
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install dropbox
brew cask install sublime-text
brew cask install vlc
brew cask install mplayerx
brew cask install slate
brew cask install atom
brew cask install seil
brew cask install karabiner
brew cask install amethyst # window manager
brew cask install phoenix
brew cask install virtualbox

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
