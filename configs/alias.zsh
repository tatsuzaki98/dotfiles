# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color'
else
  alias grep='grep --color=always'
fi

# docker-compose
alias dc='docker-compose'
alias dc-build='docker-compose build'
alias dc-run='docker-compose run'
alias dc-up='docker-compose up'
alias dc-down='docker-compose down'
alias dc-logs='docker-compose logs'
alias dc-ps='docker-compose ps'
alias dc-exec='docker-compose exec'
