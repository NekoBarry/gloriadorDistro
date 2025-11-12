#Install all dependencies
echo "Installing all dependencies"
pkg_hypr="hyprland hyprlock hyprpaper hypridle waybar ly"
pkg_term="alacritty kitty wofi rofi yazi lazygit lazydocker git starship zsh"
pkg_quality="eza dunst fastfetch wiremix btop"
pkg_network="discord telegram-desktop firefox impala"
pkg_unused_for_now="blueman"

sudo pacman -Syu --needed $pkg_hypr $pkg_term $pkg_quality $pkg_network

#Installing Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

#Installing Paru dependend packages
paru -S --needed hyprnotify elecwhat xdg-terminal-exec

#Copy config files
sh copyConfig.sh