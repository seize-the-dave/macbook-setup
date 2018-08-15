#!/usr/bin/env bash -x

# Change dock defaults
defaults delete com.apple.dock persistent-apps
defaults write com.apple.dock tilesize -int 60
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 100
defaults write com.apple.dock "minimize-to-application" -bool true
defaults write com.apple.dock mineffect -string genie
killall Dock

# Add option to quit Finder
defaults write com.apple.finder QuitMenuItem -bool true
killall Finder

# No screenshot shadows
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
