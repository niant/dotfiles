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

# PHP setup
# brew tap homebrew/dupes
# brew tap josegonzalez/homebrew-php
# brew install php54 # remember to load with httpd.conf
# brew install josegonzalez/php/composer
#

# Remove outdated versions from the cellar
brew cleanup