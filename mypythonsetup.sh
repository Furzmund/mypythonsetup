#!/bin/bash

sudo apt-get --yes update
sudo apt-get --yes upgrade

#Git
sudo apt-get --yes install git

# Pip
sudo apt-get --yes install python3-pip

# Terminator terminal
sudo apt-get --yes install terminator

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get --yes install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get --yes install sublime-text

# PyEnv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
echo '# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"' >> $HOME/.bash_aliases
