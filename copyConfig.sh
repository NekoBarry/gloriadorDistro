CONFIG_DIR="$HOME/.config"

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