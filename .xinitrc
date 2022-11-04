export SHELL="zsh"
export VISUAL="nvim"
export PAGER="less"
export BROWSER="firefox"

export LC_ALL="en_CA.UTF-8"
export LC_CTYPE="en_CA.UTF-8"
export LANG="en_CA.UTF-8"
export LANGUAGE="en_CA.UTF-8"

xbacklight \=100
xset -b
setxkbmap -layout us -variant altgr-intl

feh --no-fehbg --bg-scale "$HOME/background.jpg"
exec i3
