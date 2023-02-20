# Aliase
.PHONY: all
all: $(HOME)/.zshrc $(HOME)/.vimrc


# Recipes
$(HOME)/.zshrc: assets/zshrc
	echo "ZSH_HOME=$(shell pwd)" > $@
	cat $< >> $@

$(HOME)/.vimrc: assets/vimrc
	install $< $@
