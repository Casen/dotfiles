export EDITOR=vim
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH:$(brew --prefix)/share/npm/bin:/usr/local/mysql/bin"
source `which virtualenvwrapper.sh`
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion
export UBER_HOME="/usr/local/Cellar/uber-home/HEAD"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib"

source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/config
 
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
 
if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
