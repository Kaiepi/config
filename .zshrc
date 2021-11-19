# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt NO_HIST_BEEP
setopt NO_BEEP

bindkey -e

zstyle :compinstall filename '/home/morfent/.zshrc'
autoload -Uz compinit
compinit

autoload zkbd
function zkbd_file() {
    [[ -f ~/.zkbd/${TERM}-${VENDOR}-${OSTYPE} ]] && printf '%s' ~/".zkbd/${TERM}-${VENDOR}-${OSTYPE}" && return 0
    [[ -f ~/.zkbd/${TERM}-${DISPLAY}          ]] && printf '%s' ~/".zkbd/${TERM}-${DISPLAY}"          && return 0
    return 1
}

typeset -g -A key
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
#key[PageUp]="${terminfo[kpp]}"
#key[PageDown]="${terminfo[knp]}"

# setup key accordingly
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Home]"      ]] && bindkey -- $key[Home]      beginning-of-line
[[ -n "$key[End]"       ]] && bindkey -- $key[End]       end-of-line
[[ -n "$key[Insert]"    ]] && bindkey -- $key[Insert]    overwrite-mode
[[ -n "$key[Delete]"    ]] && bindkey -- $key[Delete]    delete-char
#[[ -n "$key[PageUp]"    ]] && bindkey -- $key[PageUp]    history-beginning-search-backward
#[[ -n "$key[PageDown]"  ]] && bindkey -- $key[PageDown]  history-beginning-search-forward
[[ -n "$key[Backspace]" ]] && bindkey -- $key[Backspace] backward-delete-char
[[ -n "$key[Up]"        ]] && bindkey -- $key[Up]        up-line-or-beginning-search
[[ -n "$key[Down]"      ]] && bindkey -- $key[Down]      down-line-or-beginning-search
[[ -n "$key[Left]"      ]] && bindkey -- $key[Left]      backward-char
[[ -n "$key[Right]"     ]] && bindkey -- $key[Right]     forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        echoti smkx
    }
    function zle-line-finish () {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi
