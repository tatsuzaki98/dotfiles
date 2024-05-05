# pyenv
printf "\e[36mpyenv\e[m: "
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  printf "\e[32mok.\e[m\n"
else
  printf "not available.\n"
fi


# nvm, Node.js version manager
printf "\e[36mnvm\e[m: "
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  printf "\e[32mok.\e[m\n"
else
  printf "not available.\n"
fi


# cargo
printf "\e[36mcargo\e[m: "
if [ -d "$HOME/.cargo" ]; then
  printf "\e[32mok.\e[m\n"
else
  printf "not available.\n"
fi


# docker
printf "\e[36mdocker\e[m: "
if type docker > /dev/null; then
  printf "\e[32mok.\e[m\n"
else
  printf "not available.\n"
fi
