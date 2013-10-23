export GIT_PS1_SHOWDIRTYSTATE=1

if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]; then
    if [[ `/usr/bin/whoami` = 'root' || `/usr/bin/whoami` = 'admin' ]]; then
        hostcolour='31' # Red.
    else
        hostcolour=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 32 + (total % 4)}')
    fi
    export PS1='\[\e[1;36m\][\@] \[\e[01;${hostcolour}m\]\u@\h\[\e[1;36m\] \w\[\033[01;35m\]$(__git_ps1)\[\033[01;36m \n$\[\e[0m\] '
fi