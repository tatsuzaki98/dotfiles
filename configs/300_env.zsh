#!/bin/zsh

printf "        available:"

function __print_ok() {
  printf " \e[36m$1\e[m,"
}

function __print_not_available() {
  printf " \e[31m$1\e[m,"
}


# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  __print_ok "pyenv"
else
  __print_not_available "pyenv"
fi


# nvm, Node.js version manager
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  __print_ok "nvm"
else
  __print_not_available "nvm"
fi


# cargo
if type cargo > /dev/null; then
  __print_ok "cargo"
else
  __print_not_available "cargo"
fi


# docker
if type docker > /dev/null; then
  __print_ok "docker"
else
  __print_not_available "docker"
fi


# ifort
if type ifort > /dev/null; then
  __print_ok "ifort"
else
  __print_not_available "ifort"
fi

printf "\n"
