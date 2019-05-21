#!/bin/bash
cd ~
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
wait
brew install git
brew cask install iterm2

# Node
brew install nvm
mkdir .nvm
brew info nvm
nvm install node

# Other dev tools
brew cask install gitkraken
brew cask install postman

# React Native
brew update && brew cask install react-native-debugger

# Zsh
source $(dirname "$0")/install-zsh.sh