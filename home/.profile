# Set usr/local bin folders ahead of others
PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Aliases
alias g=git
alias v=vagrant
alias ls="ls -Gp"

# Source some scripts
. ~/.scripts/z.sh
. ~/.scripts/git-completion.bash

# Setup command prompt
# Set usr/local bin folders ahead of others
PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Shell functions
ord() {
  LC_CTYPE=C printf '%d' "'$1"
}
wiki() { dig +short txt "$*".wp.dg.cx; }
pman() { man -t "$@" | open -f -a Preview; }
flipcoin() { [[ $(( $RANDOM % 2 )) == 0 ]] && echo heads || echo tails; }

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Aliases
alias g=git
alias v=vagrant
alias ls="ls -Gp"

# Source some scripts
. ~/.scripts/z.sh
. ~/.scripts/git-completion.bash


# Setup command prompt
select_colour() {
    host_hash=`md5 -s $HOSTNAME | cut -f4 -d" "`
    first=`printf "%s" ${host_hash:0:1}`
    O=`ord $first`
    if [[ O -ge 48 && O -le 51 ]]; then
        echo 32; # Green
    fi
    if [[ O -ge 52 && O -le 55 ]]; then
        echo 35; # Magenta
    fi
    if [[ O -ge 56 && O -le 98 ]]; then
        echo 34; # Blue
    fi
    if [[ O -ge 99 && O -le 102 ]]; then
        echo 33; # Yellow
    fi
}

HOST_COLOUR=`select_colour`

if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]; then
    if [ `/usr/bin/whoami` = 'root' ]; then
        export PS1='\[\e[01;34m\][\@] \[\e[01;31m\]\h \[\e[01;34m\]\w \n\$ \[\e[00m\]'
    else
        export PS1='\[\e[01;36m\][\@] \[\e[01;${HOST_COLOUR}m\]\u@\h \[\e[01;36m\]\w\[\e[00m\]$(__git_ps1)\n\e[01;36m\]\$ \[\e[00m\]'
    fi
fi
