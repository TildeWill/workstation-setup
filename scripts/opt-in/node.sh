echo
echo "Installing Node Version Manager (nvm)"
brew install nvm
mkdir -p ~/.nvm
cp -f files/nvm.bash ~/.bash_it/custom/

echo "Loading nvm into the current shell"
set +e
source ~/.bash_it/custom/nvm.bash
set -e

echo
echo "Installing most recent version of NodeJS"
nvm install lts/dubnium #v10.x
nvm use lts/dubnium
nvm alias default lts/dubnium

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack
npm install --global grunt-cli
npm install --global gulp-cli

brew install yarn --ignore-dependencies
