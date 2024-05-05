# list of alias
# - grep: ggrep or grep with color
# - dc: docker compose, and some alias for docker compose command
# - ls: exa if available
#   - tree: exa --tree

# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color'
else
  alias grep='grep --color=always'
fi

# docker compose
alias docker-compose='docker compose'
alias dc='docker compose'
alias dc-build='docker compose build'
alias dc-run='docker compose run'
alias dc-up='docker compose up'
alias dc-down='docker compose down'
alias dc-logs='docker compose logs'
alias dc-ps='docker compose ps'
alias dc-exec='docker compose exec'

# ls -> exa 
if type exa > /dev/null; then
  alias ls='exa --sort=extension --group-directories-first --group'
  printf "alias: \e[36mls\e[m -> \e[36mexa\e[m\n"
else
  if [ "$(uname)" "==" "Darwin" ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'

# tree
if type exa > /dev/null; then
  alias tree='exa --tree'
else
  echo > /dev/null
fi
