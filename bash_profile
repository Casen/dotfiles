########## Typical work settings #############
export PATH=$(brew --prefix)/sbin:$(brew --prefix)/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin
export EDITOR=vim
export UBER_HOME="$HOME/Uber"
export VAGRANT_DEFAULT_PROVIDER=aws
[ -s "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh
[ -s "$(brew --prefix)/etc/bash_completion" ] && . $(brew --prefix)/etc/bash_completion
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
#################################################

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
