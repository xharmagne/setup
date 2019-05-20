#!/bin/bash
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
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir .dotfiles
mkdir .dotfiles/zsh
curl -o .dotfiles/zsh/.myzshrc https://raw.githubusercontent.com/xharmagne/setup/.dotfiles/zsh/.myzshrc

sed -i '' 's/ZSH_THEME=/#ZSH_THEME=/g' .zshrc
echo -e '\nsource ".dotfiles/zsh/.myzshrc"' >> .zshrc

