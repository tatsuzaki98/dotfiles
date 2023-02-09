# Aliase
.PHONY: all
all: \
$(HOME)/.zshrc \
$(HOME)/.vimrc \
$(HOME)/.gitconfig \
local_configs/style.zsh


# Recipes
$(HOME)/.zshrc: assets/zshrc
	echo "ZSH_HOME=$(shell pwd)" > $@
	cat $< >> $@

$(HOME)/.vimrc: assets/vimrc
	install $< $@

local_configs/style.zsh: assets/style.zsh
	install $< $@

$(HOME)/.gitconfig: assets/gitconfig
	install $< $@
