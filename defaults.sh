#!/usr/bin/env bash -x

# Change dock defaults
defaults delete com.apple.dock
killall Dock

# Add option to quit Finder
defaults write com.apple.finder QuitMenuItem -bool true
killall Finder

# No screenshot shadows
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
