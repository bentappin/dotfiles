# Alises and bash functions.

alias g=git
alias v=vagrant
alias ls="ls -Gp"

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

wiki() { dig +short txt "$*".wp.dg.cx; }

pman() { man -t "$@" | open -f -a Preview; }

flipcoin() { [[ $(( $RANDOM % 2 )) == 0 ]] && echo heads || echo tails; }

source_file() {
    if [ -f $1 ];
    then
       source $1
    fi
}