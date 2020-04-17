# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew cask install flycut
brew cask install dash
brew cask install postman
brew cask install quicklook-json
brew cask install launchrocket

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-edge

# Communication

brew cask install slack

set -e
