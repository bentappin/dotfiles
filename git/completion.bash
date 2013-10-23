completion="`brew --prefix`/etc/bash_completion.d/git-completion.bash"
prompt_completion="`brew --prefix`/etc/bash_completion.d/git-prompt.sh"

if [ -f $completion ]
then
	source $completion
fi

if [ -f $prompt_completion ]
then
	source $prompt_completion
fi