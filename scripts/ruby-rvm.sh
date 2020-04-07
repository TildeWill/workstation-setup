echo
echo "Installing Ruby and Ruby tools"
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
#bash-it enable plugin rvm #`bash-it` doesn't seem to be available in the shell this runs in :(
source ~/.rvm/scripts/rvm

cp files/.irbrc ~/.irbrc
brew install readline

rvm install ruby-2.7
rvm --default use ruby-2.7

gem install bundler
