CONFIG_DIR="$HOME/.config"

if [ ! -d "$CONFIG_DIR" ]; then
    mkdir ~/.config
fi

echo "Copy alacritty $CONFIG_DIR"
cp -a alacritty/. $CONFIG_DIR/alacritty

echo "Copy hypr $CONFIG_DIR"
cp -a hypr/. $CONFIG_DIR/hypr

echo "Copy waybar $CONFIG_DIR"
cp -a waybar/. $CONFIG_DIR/waybar

echo "Copy yazi $CONFIG_DIR"
cp -a yazi/. $CONFIG_DIR/yazi

echo "Copy wofi $CONFIG_DIR"
cp -a wofi/. $CONFIG_DIR/wofi

echo "Copy dunst $CONFIG_DIR"
cp -a dunst/. $CONFIG_DIR/dunst

echo "Copy rofi $CONFIG_DIR"
cp -a rofi/. $CONFIG_DIR/rofi

echo "Copy zsh $HOME"
cp zsh/.zshrc $HOME