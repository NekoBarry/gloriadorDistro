typeOfScreenshot=$(echo -e "Active\nScreen\nArea\nOutput" | wofi --dmenu --hide-search --lines 5)

case "$typeOfScreenshot" in
    "Active") grimblast save active ;;
    "Screen") grimblast save screen ;;
    "Area") grimblast save area ;; 
    "Output") grimblast save output ;;
esac