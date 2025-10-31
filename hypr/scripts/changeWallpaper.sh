WALL_DIR="$HOME/wallpaper"
WALL_RANDOM=$(ls "$WALL_DIR"/*.{jpg,jpeg,wbap,png} | shuf -n1)
WORKSPACE=$1


for monitor in $(hyprctl monitors | awk '/Monitor/ {print $2}'); do
  hyprctl hyprpaper wallpaper "$monitor,$WALL_RANDOM"
  echo "set $WALL_RANDOM for $monitor"
done