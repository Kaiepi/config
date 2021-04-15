LC_ALL=en_CA.UTF-8;   export LC_ALL
LC_CTYPE=en_CA.UTF-8; export LC_CTYPE
LANG=en_CA.UTF-8;     export LANG
LANGUAGE=en_CA.UTF-8; export LANGUAGE

xbacklight \=100

xset -b
setxkbmap -layout us -variant altgr-intl

feh --no-fehbg --bg-scale "$HOME/background.jpg"

exec i3
