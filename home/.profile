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
# Setup command prompt
hostcolour=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 32 + (total % 4)}')
if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]; then
    if [ `/usr/bin/whoami` = 'root' ]; then
        export PS1='\[\e[01;34m\][\@] \[\e[01;31m\]\h \[\e[01;34m\]\w \n\$ \[\e[00m\]'
    else
        export PS1='\e[01;36m[\@] \e[01;${hostcolour}m\u@\h \e[01;36m\w\e[00m$(__git_ps1)\n\$ \e[00m'
    fi
fi