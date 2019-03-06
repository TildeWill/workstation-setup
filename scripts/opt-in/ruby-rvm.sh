echo
echo "Installing Ruby and Ruby tools"
\curl -sSL https://get.rvm.io | bash -s stable
bash-it enable plugin rvm
source ~/.rvm/scripts/rvm

cp files/.irbrc ~/.irbrc
brew install readline

rvm install ruby-2.5
rvm --default use ruby-2.5

gem install bundler
