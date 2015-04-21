setxkbmap -option terminate:ctrl_alt_bksp

xloadimage -onroot -center ~/.background

while true; do
    dwm 2> ~/.dwm.log
done
