echo
echo "Installing Ruby and Ruby tools"
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable
bash-it enable plugin rvm
source ~/.rvm/scripts/rvm

cp files/.irbrc ~/.irbrc
brew install readline

rvm install ruby-2.5
rvm --default use ruby-2.5

gem install bundler
