# Aliase
.PHONY: all
all: \
$(HOME)/.zshrc \
$(HOME)/.vimrc \
$(HOME)/.gitconfig \
$(HOME)/.ssh/config


# Recipes
$(HOME)/.ssh/config: assets/init-ssh.sh
	bash $<

$(HOME)/.zshrc: assets/zshrc
	echo "ZSH_HOME=$(shell pwd)" > $@
	cat $< >> $@

$(HOME)/.vimrc: assets/vimrc
	install $< $@

$(HOME)/.gitconfig: assets/gitconfig
	install $< $@
