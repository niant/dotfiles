#!/bin/bash

# https://mths.be/macos

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

# defaults write com.apple.systemuiserver menuExtras -array \
#     "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
#     "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
#     "/System/Library/CoreServices/Menu Extras/Battery.menu" \
#     "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Show scrollbars when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Expand save panel by defaults
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"


# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Keyboard settings

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Initial key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false


# Set locale
defaults write NSGlobalDomain AppleLocale -string "en_FI"

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "Europe/Helsinki" > /dev/null

# Mouse settings

# Disable tap to click
# defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 0

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Remove mouse acceleration
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# Remove El Capitan cursor shake-to-zoom
defaults write .GlobalPreferences CGDisableCursorLocationMagnification -bool YES

# Language and text formats
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Finder

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

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

# Disable .DS_Store creation on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Dock

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#This leaves the Docks animation intact, but speeds it up dramatically. You can adjust this yourself by changing the numbers after the -float flag:
defaults write com.apple.dock autohide-time-modifier -float 0.12;killall Dock
# Restore: defaults delete com.apple.dock autohide-time-modifier;killall Dock

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array

# Terminal

defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# App store

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Select theme
# defaults write com.apple.terminal "Default Window Settings" -string "Pro"
# defaults write com.apple.terminal "Startup Window Settings" -string "Pro"

# Add keyboard shortcuts
# defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Merge All Windows" "@~m"
# defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Select Next Tab" "@~\\U2192"
# defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Select Previous Tab" "@~\\U2190"

# Miscellanious

## Remove duplicates from "Open with menu"
# /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
# killall Finder

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# done
echo "Done. Note that some of these changes require a logout/restart to take effect."