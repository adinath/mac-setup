#!/usr/bin/env bash

source ./lib.sh

set +e

## upgrade the tools that come with system
brew install zsh bash git make ruby curl

brew cask install anaconda
brew install autojump
brew install zsh-autosuggestions

brew install node

npm install -g yarn
npm install -g nodemon
npm install -g gulp
npm install -g jest