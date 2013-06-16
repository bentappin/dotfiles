completion="`brew --prefix`/share/zsh/site-functions/git-completion.bash"

if [ -f $completion ]
then
	source $completion
fi