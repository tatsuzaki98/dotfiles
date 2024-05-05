# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  printf "        [\e[32mok\e[m] \e[36mpyenv\e[m\n"
else
  printf "        [\e[31mnot available\e[m] \e[36mpyenv\e[m\n"
fi


# nvm, Node.js version manager
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  printf "        [\e[32mok\e[m] \e[36mnvm\e[m\n"
else
  printf "        [\e[31mnot available\e[m] \e[36mnvm\e[m\n"
fi


# cargo
if type cargo > /dev/null; then
  printf "        [\e[32mok\e[m] \e[36mcargo\e[m\n"
else
  printf "        [\e[31mnot available\e[m] \e[36mcargo\e[m\n"
fi


# docker
if type docker > /dev/null; then
  printf "        [\e[32mok\e[m] \e[36mdocker\e[m\n"
else
  printf "        [\e[31mnot available\e[m] \e[36mdocker\e[m\n"
fi


# ifort
if type ifort > /dev/null; then
  printf "        [\e[32mok\e[m] \e[36mifort\e[m\n"
else
  printf "        [\e[31mnot available\e[m] \e[36mifort\e[m\n"
fi
