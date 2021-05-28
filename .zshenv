PATH="$HOME/.raku/bin:$HOME/.raku/share/perl6/site/bin:$PATH" # Raku
PATH="/usr/local/jdk-11/bin:$PATH"                            # Java
PATH="$HOME/.cabal/bin:/usr/local/lib/ghc/bin/:$PATH"         # Haskell
PATH="$HOME/.racket/7.7/bin:$PATH"                            # Racket
PATH="$HOME/.idris2/bin:$PATH"                                # Idris 2
PATH="$HOME/.sbt/bin:$PATH"                                   # SBT
PATH="$HOME/.local/bin:$PATH"
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
export IDRIS2_CC="clang"
export IDRIS2_CG="racket"

export AUTOMAKE_VERSION="1.16"
export AUTOCONF_VERSION="2.69"

#alias node-gyp='CC=egcc CXX=eg++ CPP=ecpp node-gyp'
alias prove6='env RAKUDOLIB=lib prove -e raku -vr $@'
