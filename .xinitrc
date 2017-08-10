
setxkbmap de
synclient TapButton1=1

xset r rate 280 25
xset -dpms 
xset s noblank 
xset s off 

clipit &
volumeicon &
ssd_clean &

bgs -z .wallpaper.jpg &
slstatus -d
exec dwm

