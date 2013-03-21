#!/bin/bash

# Install Homebrew first:
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

brew install git
brew install mongodb
brew install wget

# Remove outdated versions from the cellar
brew cleanup