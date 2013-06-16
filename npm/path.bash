# add node package manager bin directory to PATH if it exists
NPM_BIN="/usr/local/share/npm/bin"
if [ -d $NPM_BIN ]; then
	export PATH="$NPM_BIN:$PATH"
fi