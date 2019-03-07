#!/usr/bin/env bash

source ${MY_DIR}/scripts/opt-in/ruby-rvm.sh
source ${MY_DIR}/scripts/opt-in/node.sh
#source ${MY_DIR}/scripts/opt-in/golang.sh
source ${MY_DIR}/scripts/opt-in/docker.sh
source ${MY_DIR}/scripts/opt-in/postgres.sh

# Code Editors
#source ${MY_DIR}/scripts/opt-in/rubymine.sh
brew cask install macvim
brew cask install jetbrains-toolbox
brew cask install visual-studio-code
brew cask install atom
