PATH="$HOME/.raku/bin:$HOME/.raku/share/perl6/site/bin:$PATH" # Raku
PATH="/usr/local/jdk-11/bin:$PATH"                            # Java
PATH="$HOME/.cabal/bin:/usr/local/lib/ghc/bin/:$PATH"         # Haskell
PATH="$HOME/.racket/7.7/bin:$PATH"                            # Racket
PATH="$HOME/.idris2/bin:$PATH"                                # Idris 2
PATH="$HOME/.sbt/bin:$PATH"                                   # SBT
PATH="$HOME/.local/bin:$PATH"
export PATH

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
