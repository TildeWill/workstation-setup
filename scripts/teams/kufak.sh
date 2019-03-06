#!/usr/bin/env bash

source ${MY_DIR}/scripts/opt-in/ruby.sh
source ${MY_DIR}/scripts/opt-in/node.sh
source ${MY_DIR}/scripts/opt-in/golang.sh
source ${MY_DIR}/scripts/opt-in/docker.sh
source ${MY_DIR}/scripts/opt-in/postgres.sh

# Text Editors
brew cask install macvim
brew cask install jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
brew cask install visual-studio-code
brew cask install atom

# Application specific installs