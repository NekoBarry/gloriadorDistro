choice=$(echo -e "Shutdown\n Reboot\n Lock\n Suspend\n Logout" | wofi --dmenu --prompt "Power Menu:")

case "$choice" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Lock") hyprlock ;;  # or swaylock, etc.
    "Suspend") systemctl suspend ;;
    "Logout") hyprctl dispatch exit ;;
esac