# pyenv
printf "checking for \e[36mpyenv\e[m..."
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  # eval "$(pyenv init --path)"
  # eval "$(pyenv init -)"
  printf " \e[32mok\e[m.\n"
else
  printf "not detected.\n"
fi


# nvm | Node.js version manager
printf "checking for \e[36mnvm\e[m..."
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  printf " \e[32mok\e[m.\n"
else
  printf "not detected.\n"
fi
