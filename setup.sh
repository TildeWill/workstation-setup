#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#
# Arguments:
#   - a list of team components to install, see scripts/teams/ for valid options

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/homebrew.sh
source ${MY_DIR}/scripts/configuration-bash.sh

source ${MY_DIR}/scripts/git.sh
source ${MY_DIR}/scripts/git-duet.sh
source ${MY_DIR}/scripts/git-aliases.sh
source ${MY_DIR}/scripts/applications-common.sh
source ${MY_DIR}/scripts/unix.sh
source ${MY_DIR}/scripts/rabbitmq.sh
source ${MY_DIR}/scripts/configuration-osx.sh
source ${MY_DIR}/scripts/configurations.sh
source ${MY_DIR}/scripts/ssh.sh

source ${MY_DIR}/scripts/asdf.sh
source ${MY_DIR}/scripts/node.sh
#source ${MY_DIR}/scripts/golang.sh
source ${MY_DIR}/scripts/docker.sh
source ${MY_DIR}/scripts/postgres.sh

# Code Editors
#source ${MY_DIR}/scripts/rubymine.sh
#brew cask install macvim
brew cask install jetbrains-toolbox
brew cask install visual-studio-code
brew cask install atom
brew cask install monitorcontrol
brew cask install spectacle

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/teams/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done

source ${MY_DIR}/scripts/finished.sh

#TODO: Just use git-duet
#TODO: fix postgres script to take an argument for company/user/whatever
#TODO: Fail/prompt if no team is specified?
#TODO: Re-enable golang and rubymine scripts
