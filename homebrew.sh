#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cat homebrew-packages.txt | xargs brew install
cat homebrew-casks.txt | xargs brew cask install
