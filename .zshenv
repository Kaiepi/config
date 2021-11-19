export NQP_HOME="$HOME/.raku/share/nqp";
export RAKUDO_HOME="$HOME/.raku/share/perl6";
export JAVA_HOME="/usr/local/jdk-11";

export PERL5LIB="/home/morfent/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}";
export PERL_LOCAL_LIB_ROOT="/home/morfent/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}";
export PERL_MB_OPT="--install_base \"/home/morfent/perl5\"";
export PERL_MM_OPT="INSTALL_BASE=/home/morfent/perl5";

PATH="$HOME/perl5/bin:$PATH";                         # Perl
PATH="$HOME/.raku/bin:$RAKUDO_HOME/site/bin:$PATH"    # Raku
PATH="$JAVA_HOME/bin:$PATH"                           # Java
PATH="$HOME/.cabal/bin:/usr/local/lib/ghc/bin/:$PATH" # Haskell
PATH="$HOME/.racket/7.7/bin:$PATH"                    # Racket
PATH="$HOME/.idris2/bin:$PATH"                        # Idris 2
PATH="$HOME/.sbt/bin:$PATH"                           # SBT
PATH="$HOME/.dotty/bin:$PATH"                         # Scala
PATH="$HOME/.cargo/bin:$PATH"                         # Rust
PATH="$HOME/.erlang/bin:$PATH"                        # Erlang
PATH="$HOME/.local/bin:$PATH"
export PATH

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
