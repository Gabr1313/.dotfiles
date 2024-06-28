#!/usr/bin/env bash
SSPATH=~/screenshots/screenshot-$(date +%y%m%d-%H%M%S).png

grim -o $(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name') $SSPATH
wl-copy <$SSPATH
