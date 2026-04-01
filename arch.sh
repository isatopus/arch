#sudo pacman -Syu libvirt qemu-kvm qemu-system-x86 virt-manager virt-install ovmf libguestfs dnsmasq
#sudo pacman -Syu ghostty hyprland hyprshot waybar wofi cliphist swaync hyprlock hyprpaper wlogout starship nautilus xdg-desktop-portal-hyprland hyprpolkitagent noto-fonts-emoji noto-fonts-cjk pavucontrol adw-gtk3 adw-gtk-theme qt5-wayland qt6-wayland nwg-look Qt5 Qt6 Settings archlinux-xdg-menu nvidia-open nvidia-settings nvidia-container-toolkit pipewire wireplumber pamixer brightnessctl nerdfonts nano bluez blueman networkmanager
#sudo systemctl enable --now libvirtd.service

sudo pacman -S sddm plasma-meta kate dolphin ghostty
sudo enable --now sddm.service 
sudo pacman -S zathura zathura-pdf-mupdf mpv 7zip python uv rustup sqlite btop tldr ffmpeg tailscale gcc docker docker-compose git git-lfs less curl noto-fonts-emoji noto-fonts-cjk starship bun pandoc opentofu azure-cli tesseract tesseract-data-por tesseract-data-eng calmav

cd documents
mkdir code && cd code
uv venv .venv
source .venv/bin/activate
uv pip install pandas numpy scipy sympy scikit-learn matplotlib seaborn markitdown langchain ipywidgets ipykernel iprogress yt-dlp openai requests beautifulsoup4 datasets transformers torch wandb tokenizers keras
bun install -g gemini typescript firebase firebase-tools supabase

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -S visual-studio-code-bin google-chrome ttf-ms-win11-auto opentabletdriver solaar unityhub vivado

sudo usermod -aG docker $user
sudo systemctl enable --now opentabletdriver.service
sudo systemctl enable --now docker.service
sudo systemctl enable --now tailscaled.service

flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub flathub com.spotify.Client org.kde.kcalc org.kde.gwenview org.libreoffice.LibreOffice com.github.xournalpp.xournalpp org.texstudio.TeXstudio org.blender.Blender org.kde.krita org.freecad.FreeCAD com.github.reds.LogisimEvolution org.kicad.KiCad org.remmina.Remmina com.github.tchx84.Flatseal com.protonvpn.www org.filezillaproject.Filezilla com.moonlight_stream.Moonlight -y
