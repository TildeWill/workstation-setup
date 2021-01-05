#!/usr/bin/env bash

brew install asdf

echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.bash_it/custom/asdf.bash
echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_it/custom/asdf.bash