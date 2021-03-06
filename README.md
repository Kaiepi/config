# Config

This contains my configuration files for UNIX-like systems. This is a minimal
i3-based X.org setup with UTF-8 xterm and dark, colourful, high-contrast
theming.

## Installing

1. Install the following packages:
    - zsh
    - neovim
    - git
    - i3
    - i3status
    - bemenu
    - feh
    - alacritty (optional, fallback to xterm)
    - delta (a.k.a. git-delta on some package managers)
2. Install the following (or remove their related `PATH`s from `.zshenv` and vim config in `.vim/vimrc`/`.vim/ftplugin/after`):
    - Haskell
    - Racket
    - OpenJDK 11
    - Raku (to `~/.raku`)
    - Idris (to `~/.idris`)
    - Idris 2 (to `~/.idris2`)
    - Scala 3 (SBT should exist in `~/.sbt`)
3. Set up X.org with the [Iosevka SS05](https://github.com/be5invis/Iosevka) and Noto font families. Symbola isn't required by this, but wouldn't hurt either.
4. Follow the instructions for installing the [Plug](https://github.com/junegunn/vim-plug) vim plugin.
5. Pick a background to use and save it as `~/background.jpg` (not sure if mine's copyrighted...).
6. You should be good to go by this point! If not, raise an issue.
