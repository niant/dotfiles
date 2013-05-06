#!/bin/bash

# Install Homebrew first:
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

brew install git
brew install mongodb
brew install wget

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