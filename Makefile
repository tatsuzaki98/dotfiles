CURRENT_DIR = $(shell pwd)
ZSH_CONFIGS = $(wildcard ${CURRENT_DIR}/configs/*.zsh)
ZSHRC_SRC = ${CURRENT_DIR}/zshrc
ZSHRC = ${HOME}/.zshrc

${ZSHRC}: ${ZSHRC_SRC}
	echo "ZSH_HOME=${CURRENT_DIR}" > $@
	cat $< >> $@
