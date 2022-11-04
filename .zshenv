export LC_ALL=en_CA.UTF-8
export LC_CTYPE=en_CA.UTF-8
export LANG=en_CA.UTF-8
export LANGUAGE=en_CA.UTF_8

export SHELL="zsh"
export VISUAL="nvim"
export PAGER="less"
export BROWSER="firefox"

export CVSROOT="anoncvs@obsdacvs.cs.toronto.edu:/cvs"
export CVSEDITOR="nvim"

export HS_ENCODING="UTF-8"
export IDRIS_CC="clang"
export IDRIS2_CC="clang"
export IDRIS2_CG="racket"

export AUTOMAKE_VERSION="1.16"
export AUTOCONF_VERSION="2.69"

export GDK_USE_XFT=1

#alias node-gyp='CC=egcc CXX=eg++ CPP=ecpp node-gyp'
alias prove6='env RAKUDOLIB=lib prove -e raku -vr $@'
