#Install all dependencies
echo "Installing all dependencies"
pkg_hypr="hyprland hyprlock hyprpaper hypridle waybar ly uwsm"
pkg_term="alacritty kitty wofi rofi yazi lazygit lazydocker git starship zsh ttf-jetbrains-mono-nerd"
pkg_quality="eza dunst fastfetch wiremix btop nwg-displays nwg-look"
pkg_messanger="discord telegram-desktop elecwhat"
pkg_network="networkmanager nm-connection-editor"
pkg_unused_for_now="blueman"

sudo pacman -Syu --needed $pkg_hypr $pkg_term $pkg_quality $pkg_network

#Installing Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

#Installing Paru dependend packages
paru -S --needed grimblast metar $pkg_messanger

#Copy config files
sh copyConfig.sh

#Enable and Start all relevant services
sudo systemctl enable NetworkManager ly && sudo systemctl start NetworkManager ly