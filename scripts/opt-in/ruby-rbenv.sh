echo
echo "Installing Ruby and Ruby tools"

brew install rbenv
bash-it enable plugin rbenv
cp files/.irbrc ~/.irbrc
brew install readline
eval "$(rbenv init -)"

rbenv install 2.6.1 --skip-existing
rbenv global 2.6.1

gem install bundler
rbenv rehash
