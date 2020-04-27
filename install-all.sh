#!/bin/bash -i

#install scripts from this repo
linkDir="$HOME/.local/bin/"

if [ ! -d "$linkDir" ]
then mkdir $linkDir
fi

for f in *
do
   if [ ! -L "$linkDir/$f" ]
   then   ln -s "$f" $linkDir
fi
done;

source $HOME/.bashrc


#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


#add curl 
sudo apt install curl


# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source $HOME/.bashrc
nvm install --lts


# add apt repositories
sudo add-apt-repository ppa:ondrej/php -y
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# apt installs
sudo apt update

sudo install-php 7.4
sudo apt install git composer mysql-server fzf vim network-manager libnss3-tools jq xsel tldr -y
sudo apt install --no-install-recommends yarn -y
sudo apt install ./google-chrome-stable_current_amd64.deb


# valet
composer global require cpriego/valet-linux tightenco/lambo
source $HOME/.bashrc
valet install


# jetbrains products
sudo snap install datagrip --classic
sudo snap install phpstorm --classic
sudo snap install  code --classic




