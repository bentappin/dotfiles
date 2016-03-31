brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper

export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"

pyenv install `pyenv install --list | grep "  2.7" | tail -n 1 | xargs`
pyenv install `pyenv install --list | grep "  3.4" | tail -n 1 | xargs`
pyenv install `pyenv install --list | grep "  3.5" | tail -n 1 | xargs`

exit 0
