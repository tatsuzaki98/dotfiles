######################################
# Include
#
UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
  include Linux.mk
endif

ifeq ($(UNAME), macOS)
  include macOS.mk
endif


######################################
# Aliases
#
.PHONY: all
all: $(HOME)/.zshrc $(HOME)/.vimrc local_configs/style.zsh


######################################
# Dependencies
#
$(HOME)/.zshrc: zshrc $(wildcard configs/*.zsh) $(wildcard local_configs/*.zsh)
$(HOME)/.vimrc: vimrc
local_configs/style.zsh: style.zsh


######################################
# Recipes
#
$(HOME)/.zshrc:
	echo "ZSH_HOME=$(shell pwd)" > $@
	cat zshrc >> $@

$(HOME)/.vimrc:
	install vimrc $@

local_configs/style.zsh: style.zsh
	install style.zsh $@

