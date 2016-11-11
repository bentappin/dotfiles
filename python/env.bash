export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then
	eval "$(pyenv virtualenv-init -)"
	export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
fi
