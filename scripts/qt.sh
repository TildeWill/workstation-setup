# From the Capybara-webkit instructions
# https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit#macos-high-sierra-1013-macos-sierra-1012-el-capitan-1011-and-yosemite-1010

# NOTE: You will need all of XCode, not just the command line tools :(

pushd $( brew --prefix )/Homebrew/Library/Taps/homebrew/homebrew-core
git fetch --unshallow
git checkout 9ba3d6ef8891e5c15dbdc9333f857b13711d4e97 Formula/qt@5.5.rb

#slice out line 25 to prevent mountain_lion error
sed -i -e '25d' Formula/qt@5.5.rb

brew install qt@5.5

cp -f files/qt.bash ~/.bash_it/custom/
popd
