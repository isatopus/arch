#!/bin/bash

#===============================================================================
#== System
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y tmux docker.io docker-compose-v2 python3 python3-venv python3-pip htop tmux ffmpeg gcc sqlite3 git git-lfs zip unzip curl nmap tesseract-ocr tesseract-ocr-eng tesseract-ocr-por texlive latexmk texlive-xetex hunspell-pt-br pandoc fzf tldr
sudo snap install code-server

# Docker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install node

# npm install -g tldr
npm install -g @google/gemini-cli
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -LsSf https://astral.sh/uv/install.sh | sh
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh
chmod +x install-opentofu.sh
./install-opentofu.sh --install-method deb
rm -f install-opentofu.sh

#===============================================================================
#== git
ssh-keygen -t ed25519 -C "isatopus@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
git config --global user.email "isatopus@gmail.com"
git config --global user.name "isatopus"
git clone git@github.com:isatopus/.devcontainer.git
git clone git@github.com:isatopus/projects.git
git clone git@github.com:isatopus/dev.git
git clone git@github.com:isatopus/md.git
git clone git@github.com:isatopus/dotfiles.git
#===============================================================================

#===============================================================================
#== cuda
#wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-keyring_1.1-1_all.deb
#sudo dpkg -i cuda-keyring_1.1-1_all.deb
#sudo apt-get update
#sudo apt-get -y install cuda-toolkit-12-9
#===============================================================================
