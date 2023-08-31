################################################################################
#                                                                Instalations
#
################################################################################

PLUGIN_MANAGER_PATH=${ZDOTDIR:-$HOME}/.antigen

if [ ! -d "$PLUGIN_MANAGER_PATH" ]
then
	echo "Downloading the Plugin Manager"
	git clone https://github.com/zsh-users/antigen.git $PLUGIN_MANAGER_PATH
fi
source $PLUGIN_MANAGER_PATH/antigen.zsh

################################################################################
#                                                                     Plugins
#
################################################################################
antigen use oh-my-zsh
antigen bundle Aloxaf/fzf-tab
antigen bundle hschne/fzf-git
antigen bundle autojump
antigen bundle fzf
antigen bundle git
antigen bundle gitfast
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme random
antigen apply

################################################################################
#                                                                     General
#                                                               Configuration
#
################################################################################
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
export FZF_BASE=/tmp/fzf
autoload -U edit-command-line
zle -N edit-command-line
bindkey -e
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

################################################################################
#                                                                      Aliases
#
################################################################################
alias gb="git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))'"
