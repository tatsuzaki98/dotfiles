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

