#!/bin/bash

# Usage: ./osx.sh

# Ask for the administrator password upfront
# sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set computer name (as done via System Preferences → Sharing)
# sudo scutil --set ComputerName "MacBook Pro"
# sudo scutil --set HostName "MacBook Pro"
# sudo scutil --set LocalHostName "MacBook-Pro"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MacBook-Pro"

# General UI/UX


# Show scrollbars when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 15

# Initial key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Set locale
defaults write NSGlobalDomain AppleLocale -string "fi_FI"

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false


# Mouse settings

# Disable tap to click
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 0

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Language and text formats

defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Finder

# Finder: show hidden files by default
# defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Show the ~/Library folder.
chflags nohidden ~/Library

# Dock

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#This leaves the Docks animation intact, but speeds it up dramatically. You can adjust this yourself by changing the numbers after the -float flag:
defaults write com.apple.dock autohide-time-modifier -float 0.12;killall Dock
# Restore: defaults delete com.apple.dock autohide-time-modifier;killall Dock


# Terminal

# Select theme
defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"

# Add keyboard shortcuts
defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Merge All Windows" "@~m"
defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Select Next Tab" "@~\\U2192"
defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Select Previous Tab" "@~\\U2190"

# Miscellanious

## Remove duplicates from "Open with menu"
# /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
# killall Finder

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# done
echo "Done. Note that some of these changes require a logout/restart to take effect."