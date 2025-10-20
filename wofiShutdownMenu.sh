choice=$(echo -e "Shutdown\nReboot\nLock\nSuspend\nLogout" | wofi --dmenu --prompt "Power Menu:")

case "$choice" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Lock") hyprlock ;;  # or swaylock, etc.
    "Suspend") systemctl suspend ;;
    "Logout") hyprctl dispatch exit ;;
esac