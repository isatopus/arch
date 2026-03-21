sudo pacman -Syu ghostty hyprland hyprshot waybar wofi cliphist swaync hyprlock hyprpaper wlogout starship nautilus xdg-desktop-portal-hyprland hyprpolkitagent noto-fonts-emoji noto-fonts-cjk pavucontrol adw-gtk3 adw-gtk-theme qt5-wayland qt6-wayland nwg-look Qt5 Qt6 Settings archlinux-xdg-menu nvidia-open nvidia-settings nvidia-container-toolkit pipewire wireplumber pamixer brightnessctl nerdfonts sddm nano bluez blueman networkmanager
sudo enable --now sddm.service 

sudo pacman -Syu libvirt qemu-kvm qemu-system-x86 virt-manager virt-install ovmf libguestfs dnsmasq

sudo pacman -S zathura zathura-pdf-mupdf mpv 7zip python uv rustup sqlite btop tldr ffmpeg gcc docker docker-compose git git-lfs less curl bun pandoc opentofu azure-cli tesseract tesseract-data-por tesseract-data-eng 

cd documents
mkdir code && cd code
uv venv .venv
source .venv/bin/activate
uv pip install pandas numpy scipy sympy scikit-learn matplotlib seaborn markitdown langchain ipywidgets ipykernel iprogress yt-dlp openai requests beautifulsoup4 datasets transformers torch torch-audio torchvision wandb tokenizers keras tensorflow tensorboard tensorboard-data-server tensorflow-datasets tensorflow_decision_forests tensorflow-hub tensorflow-metadata tensorflow-probability tensorflow-text tensorstore

bun install -g gemini typescript firebase supabase
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

yay -S visual-studio-code-bin google-chrome ttf-ms-win11-auto openta    etdriver solaar kvantum-theme-catppuccin-git catppuccin-cursors-mocha catppuccin-gtk-theme-mocha

sudo usermod -aG docker $user
sudo systemctl enable --now opentabletdriver.service
sudo systemctl enable --now docker.service
sudo systemctl enable --now tailscaled.service
sudo systemctl enable --now libvirtd.service

flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub flathub com.spotify.Client org.kde.kcalc org.kde.kamoso io.mpv.Mpv org.kde.gwenview org.libreoffice.LibreOffice org.zotero.Zotero com.github.xournalpp.xournalpp org.texstudio.TeXstudio org.blender.Blender org.kde.krita org.freecad.FreeCAD org.kicad.KiCad org.remmina.Remmina com.github.tchx84.Flatseal org.prismlauncher.PrismLauncher io.mrarm.mcpelauncher org.qbittorrent.qBittorrent com.protonvpn.www org.filezillaproject.Filezilla -y
