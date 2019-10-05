#!/usr/bin/env bash

## typically used once per new machine, however safe to be called multiple times

source ./lib.sh

if xcode-select -p 1>/dev/null; then
  already_installed "Command line tools"
else
  xcode-select --install
fi

## https://docs.brew.sh/Installation
if has_exec brew; then
  already_installed "Homebrew"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


## Oh-my-zsh at default location
## https://github.com/robbyrussell/oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  already_installed "Oh My Zsh!"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi