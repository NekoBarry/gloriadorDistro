choice=$(echo -e "Shutdown\nReboot\nLock\nSuspend\nLogout" | wofi --dmenu --hide-search --lines 5 --hide-scroll --allow-images)

case "$choice" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Lock") hyprlock ;;  # or swaylock, etc.
    "Suspend") systemctl suspend ;;
    "Logout") hyprctl dispatch exit ;;
esac