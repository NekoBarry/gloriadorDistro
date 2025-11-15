echo "Start hyprpaper.sh"
sleep 3

WALL_DIR="$HOME/wallpaper"
for img in "$WALL_DIR"/*.{jpg,jpeg,wbap,png}; do
  hyprctl hyprpaper preload "$img"
  echo "load $img"
done

for monitor in $(hyprctl monitors | awk '/Monitor/ {print $2}'); do
  hyprctl hyprpaper wallpaper "$monitor,$WALL_DIR/Esselnior.png"
done