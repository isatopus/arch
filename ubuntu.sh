#!/bin/bash

#===============================================================================
#== System
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y libvirt-daemon qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager virtinst ovmf qemu-utils libguestfs-tools dnsmasq distrobox ttf-mscorefonts-installer flatpak gnome-software-plugin-flatpak

curl -fsSL https://tailscale.com/install.sh | sh
sudo usermod -aG docker isatopus
sudo systemctl enable --now docker.service
sudo systemctl enable --now tailscaled.service
sudo systemctl enable --now libvirtd.service
sudo snap install code --classic
#===============================================================================

#===============================================================================
#== steam
curl -O https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb
rm steam.deb
#===============================================================================

#===============================================================================
#== flatpak
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.google.Chrome org.filezillaproject.Filezilla org.kde.krita org.freecad.FreeCAD org.kicad.KiCad org.blender.Blender org.gimp.GIMP com.stremio.Stremio org.zotero.Zotero org.libreoffice.LibreOffice com.github.xournalpp.xournalpp org.remmina.Remmina com.usebottles.bottles com.github.tchx84.Flatseal org.prismlauncher.PrismLauncher org.cryptomator.Cryptomator com.github.jeromerobert.pdfarranger sh.ppy.osu com.github.tenderowl.frog org.geogebra.GeoGebra org.ghidra_sre.Ghidra com.github.reds.LogisimEvolution com.protonvpn.www app.devsuite.Ptyxis -y
#===============================================================================

#===============================================================================
#== git
ssh-keygen -t ed25519 -C "isatopus@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
#===============================================================================

#===============================================================================
#== xbox controller
sudo apt install cabextract libusb-dev
git clone https://github.com/medusalix/xow
cd xow
make BUILD=RELEASE
sudo make install
sudo xow-get-firmware.sh --skip-disclaimer
sudo systemctl enable xow
sudo systemctl start xow
#===============================================================================

#===============================================================================
#== container toolkit
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt update    
sudo apt install -y nvidia-container-toolkit
#===============================================================================
#== Tjce
# sudo apt install -y openconnect
# sudo openconnect --protocol=gp global.protect.server -u user-name
# https://pje-office.pje.jus.br/pro/pjeoffice-pro-v2.5.16u-linux_x64.zip
# https://safesign.gdamericadosul.com.br/content/SafeSign_IC_Standard_Linux_ub2204_3.8.0.0_AET.000.zip
#===============================================================================
# https://github.com/SoftFever/OrcaSlicer/releases/tag/v2.3.0
# https://www.chitubox.com/en/index (bottles)
# https://www.autodesk.com/products/fusion-360/appstream?mktvar002=1033964&utm_medium=product&utm_source=ipm&utm_campaign=americas-dm-collection-fusion-360-download&utm_id=1033964 (bottles)
# https://www.expandrive.com/download