#!/bin/zsh

# list of alias
# - grep: ggrep or grep with color
# - dc: docker compose, and some alias for docker compose command
# - ls: exa if available
#   - tree: exa --tree

function __print_alias() {
  printf "        alias: \e[36m$1\e[m = \e[36m$2\e[m\n"
}

# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color'
  __print_alias "grep" "ggrep"
else
  alias grep='grep --color=always'
fi

# docker compose
if type docker-compose > /dev/null; then
  alias docker-compose='docker compose'
  alias dc='docker compose'
  alias dc-build='docker compose build'
  alias dc-run='docker compose run'
  alias dc-up='docker compose up'
  alias dc-down='docker compose down'
  alias dc-logs='docker compose logs'
  alias dc-ps='docker compose ps'
  alias dc-exec='docker compose exec'
  __print_alias "dc" "docker-compose"
fi

# ls -> exa 
if type exa > /dev/null; then
  alias ls='exa --sort=extension --group-directories-first --group'
  __print_alias "ls" "exa"
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
  alias tree='exa --tree --level=2'
  __print_alias "tree" "exa --tree"
fi
