# Aliase
.PHONY: all
all: \
$(HOME)/.zshrc \
$(HOME)/.vimrc \
$(HOME)/.gitconfig


# Recipes
$(HOME)/.zshrc: assets/zshrc
	echo "ZSH_HOME=$(shell pwd)" > $@
	cat $< >> $@

$(HOME)/.vimrc: assets/vimrc
	install $< $@

$(HOME)/.gitconfig: assets/gitconfig
	install $< $@
