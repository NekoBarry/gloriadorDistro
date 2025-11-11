WALL_DIR="$HOME/wallpaper"
WALL_RANDOM=$(ls "$WALL_DIR"/*.{jpg,jpeg,wbap,png} | shuf -n1)
WORKSPACE=$1

case $WORKSPACE in
  1) WALL_RANDOM="$WALL_DIR/Esselnior.png" ;;
  2) WALL_RANDOM="$WALL_DIR/Gloriador.png" ;;
  3) WALL_RANDOM="$WALL_DIR/Drachenmagier.png" ;;
  4) WALL_RANDOM="$WALL_DIR/Akhrab.png" ;;
esac

echo "Wallpaper: $WALL_RANDOM"

for monitor in $(hyprctl monitors | awk '/Monitor/ {print $2}'); do
  hyprctl hyprpaper wallpaper "$monitor,$WALL_RANDOM"
  echo "set $WALL_RANDOM for $monitor"
done