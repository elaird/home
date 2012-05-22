setxkbmap -option terminate:ctrl_alt_bksp
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"

xloadimage -onroot -center ~/.background

while true; do
    dwm 2> ~/.dwm.log
done