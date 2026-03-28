pacman -Syu --noconfirm
pacman -S --noconfirm base-devel git curl nano sudo which less man-db man-pages bash-completion btop tree 7zip openssh net-tools iproute2 cuda nerd-fonts starship python uv rustup sqlite tldr ffmpeg gcc docker docker-compose git git-lfs less curl bun pandoc opentofu azure-cli tesseract tesseract-data-por tesseract-data-eng 
passwd
EDITOR=nano visudo
Uncomment this line (remove the `#`):
# %wheel ALL=(ALL:ALL) ALL
useradd -m -s /bin/bash isatopus
su $user
# wsl --manage archlinux --set-default-user isatopus
sudo sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8
export PATH="/home/isatopus/.bun/bin:$PATH" >> .bashrc
sudo systemctl enable --now docker.service
echo 'eval "$(starship init bash)"' >> ~/.bashrc
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -S python313
rustup default stable
mkdir code && cd code
uv venv .venv
source .venv/bin/activate
uv pip install pandas numpy scipy sympy scikit-learn matplotlib seaborn markitdown langchain ipywidgets ipykernel iprogress yt-dlp openai requests beautifulsoup4 datasets transformers wandb tokenizers keras torch
bun install -g gemini typescript firebase supabase
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
