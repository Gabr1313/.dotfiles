SCREENS=`xrandr | grep " connected" | cut -f1 -d" "`
SCREEN1=`echo $SCREENS | cut -d " " -f1`
SCREEN2=`echo $SCREENS | cut -d " " -f2`

# use `xrandr | grep " connected" | cut ...` for screen resolution
if [ $SCREEN1 != $SCREEN2 ] 
then
  xrandr --output $SCREEN2 --mode 2560x1440 --scale 1x1 --output $SCREEN1 --same-as $SCREEN2 --mode 1920x1080 --scale 1.33333x1.33333
fi
nitrogen --restore
