# exa 
printf "\e[36mexa\e[m:"
if type exa > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias ls='exa --sort=extension --group-directories-first --group'
else
  printf "not available.\n"
  if [ "$(uname)" "==" "Darwin" ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'


# bat
printf "\e[36mbat\e[m:"
if type bat > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias cat='bat --style="plain" --theme="ansi"'
else
  printf "not available.\n"
fi


# pyenv
printf "\e[36mpyenv\e[m:"
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  printf " \e[32mok\e[m.\n"
else
  printf "not available.\n"
fi


# nvm | Node.js version manager
printf "\e[36mnvm\e[m:"
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  printf " \e[32mok.\e[m\n"
else
  printf "not available.\n"
fi


# intel oneapi
function __activate-oneapi__() {
  . /opt/intel/oneapi/setvars.sh
  export PROMPT="(oneapi) ${PROMPT}"
}
printf "\e[36moneapi\e[m:"
if [ -d "/opt/intel/oneapi" ]; then
  alias oneapi-activate="__activate-oneapi__"
  printf " \e[32moneapi-activate\e[m\n"
else
  printf "not available.\n"
fi

