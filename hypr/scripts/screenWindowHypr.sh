SSPATH=~/screenshots/screenshot-$(date +%y%m%d-%H%M%S).png

grim -g "$(hyprctl clients -j | jq -r ".[] | select(.workspace.id == "$(hyprctl activewindow -j | jq -r '.workspace.id')\)""| jq -r ".at,.size" | jq -s "add" | jq '_nwise(4)' | jq -r '"\(.[0]),\(.[1]) \(.[2])x\(.[3])"'| slurp)" "$SSPATH"
xclip -selection clipboard -t image/png -i $SSPATH
