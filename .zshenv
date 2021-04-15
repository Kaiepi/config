PATH="$PATH:$HOME/.raku/bin:$HOME/.raku/share/perl6/site/bin" # Raku
PATH="$PATH:/usr/local/jdk-11/bin"                            # Java
PATH="$PATH:$HOME/.cabal/bin:/usr/local/lib/ghc/bin/"         # Haskell
PATH="$PATH:$HOME/.racket/7.7/bin"                            # Racket
PATH="$PATH:$HOME/.idris2/bin"                                # Idris 2
export PATH

export SHELL="zsh"
export VISUAL="vim"
export PAGER="less"
export BROWSER="firefox"

export CVSROOT="anoncvs@obsdacvs.cs.toronto.edu:/cvs"
export CVSEDITOR="vim"

export NQP_HOME="$HOME/.raku/share/nqp"
export RAKUDO_HOME="$HOME/.raku/share/perl6"
export JAVA_HOME="/usr/local/jdk-11"
export HS_ENCODING="UTF-8"
export IDRIS_CC="clang"

export AUTOMAKE_VERSION="1.16"
export AUTOCONF_VERSION="2.69"

alias gvim='gvim 2>/dev/null'
#alias node-gyp='CC=egcc CXX=eg++ CPP=ecpp node-gyp'
alias prove6='env RAKUDOLIB=lib prove -e raku -vr $@'
alias cabal="$HOME/.cabal/bin/cabal"
