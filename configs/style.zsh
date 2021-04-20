##### zsh appearance
autoload -U colors && colors
autoload -U compinit
compinit
PROMPT="${fg[red]}%n@%m${reset_color} ${fg[green]}%~${reset_color}
\$ "
