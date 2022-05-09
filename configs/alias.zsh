# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color'
else
  alias grep='grep --color=always'
fi
