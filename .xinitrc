setxkbmap -option terminate:ctrl_alt_bksp
xmodmap ~/.Xmodmap
xloadimage -onroot -center ~/.background

while true; do
    dwm 2> ~/.dwm.log
    # fluxbox
done
