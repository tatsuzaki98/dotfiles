CURRENT_DIR = $(shell pwd)

##### Backup
BACKUP_DIR = ${CURRENT_DIR}/backup

##### ZSH
ZSH_CONFIGS = $(wildcard ${CURRENT_DIR}/configs/*.zsh)
ZSHRC_SRC = ${CURRENT_DIR}/zshrc
ZSHRC = ${HOME}/.zshrc

##### VIM
VIMRC_SRC = ${CURRENT_DIR}/vimrc
VIMRC = ${HOME}/.vimrc

UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
  include Linux.mk
endif

ifeq ($(UNAME), macOS)
  include macOS.mk
endif

.PHONY: all
all: ${ZSHRC} ${VIMRC}

${ZSHRC}: ${ZSHRC_SRC}
	touch $@
	cp $@ ${BACKUP_DIR}
	echo "ZSH_HOME=${CURRENT_DIR}" > $@
	cat $< >> $@

${VIMRC}: ${VIMRC_SRC}
	touch $@
	cp $@ ${BACKUP_DIR}
	cat $< > $@
