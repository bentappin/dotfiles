export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then
	eval "$(pyenv virtualenv-init -)"
fi