#!/usr/bin/env bash
SSPATH=/tmp/screenshot.png

grim -g "$(slurp)" "$SSPATH"
wl-copy <$SSPATH
