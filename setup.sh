#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#
# Arguments:
#   - a list of team components to install, see scripts/teams/ for valid options
#
# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh
source ${MY_DIR}/scripts/common/configuration-bash.sh

source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/git-aliases.sh
source ${MY_DIR}/scripts/common/applications-common.sh
source ${MY_DIR}/scripts/common/unix.sh
source ${MY_DIR}/scripts/common/configuration-osx.sh
source ${MY_DIR}/scripts/common/configurations.sh
source ${MY_DIR}/scripts/common/ssh.sh

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

source ${MY_DIR}/scripts/common/finished.sh

#TODO: Just use git-duet
#TODO: Fail/prompt if no team is specified?