# Setup directory for pip cache
if [ "$(uname -s)" == "Darwin" ]
then
	export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip-downloads
else
	export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
fi
