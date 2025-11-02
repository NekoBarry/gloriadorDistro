#Install all dependencies
echo "Installing all dependencies"
sudo pacman -Syu --noconfirm hyprland hyprnotify hyprlock hyprpaper hypridle waybar ly alacritty kitty wofi yazi git telegram-desktop discord

#Installing Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

#Installing Paru dependend packages
paru -S --nocinfirm hyprnotify elecwhat 

#Copy config files
sh copyConfig.sh