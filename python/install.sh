brew install python3
brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper

export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"

pyenv install `pyenv install --list | grep "  2.7" | grep -v "dev" | tail -n 1 | xargs`
pyenv install `pyenv install --list | grep "  3.4" | grep -v "dev" | tail -n 1 | xargs`
pyenv install `pyenv install --list | grep "  3.5" | grep -v "dev" | tail -n 1 | xargs`
pyenv install `pyenv install --list | grep "  3.6" | grep -v "dev" | tail -n 1 | xargs`

exit 0
