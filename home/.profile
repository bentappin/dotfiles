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
if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]; then
    if [ `/usr/bin/whoami` = 'root' ]; then
        export PS1='\[\033[01;34m\][\@] \[\033[01;31m\]\h \[\033[01;34m\]\w \n\$ \[\033[00m\]'
    else
        export PS1='\[\033[01;36m\][\@] \[\033[01;33m\]\u@\h \[\033[01;36m\]\w$(__git_ps1)\n\$ \[\033[00m\]'
    fi
fi

# Shell functions
wiki() { dig +short txt "$*".wp.dg.cx; }
pman() { man -t "$@" | open -f -a Preview; }
flipcoin() { [[ $(( $RANDOM % 2 )) == 0 ]] && echo heads || echo tails; }
