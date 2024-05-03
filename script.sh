#! /bin/bash

# Update package lists
sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Install Git
sudo apt-get install -y git

# Install nvim
sudo apt-get install -y neovim

# Install tmux
sudo apt-get install -y tmux

# Check if curl is installed (so that I can curl a wttr.in/Paris to get Paris weather, once we git clone wttr repo)
curl --version
if [ $? -eq 0 ]; then
    echo "Curl is installed"
else
    echo "Curl is not installed. Installing"
    sudo apt-get install -y curl
fi

# Installing github weather repo 
git clone https://github.com/chubin/wttr.in.git

# Run weather app (check https://github.com/chubin/wttr.in for more info on how to use it)
curl wttr.in/Paris

