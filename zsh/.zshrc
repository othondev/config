################################################################################
#                                                                Instalations
#
################################################################################
ZSH_ROOT_PATH=$XDG_CONFIG_HOME/zsh
PLUGIN_MANAGER_PATH=$ZSH_ROOT_PATH/antigen

if [ ! -d "$PLUGIN_MANAGER_PATH" ]
then
	echo "Downloading the Plugin Manager"
	git clone https://github.com/zsh-users/antigen.git
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
antigen theme robbyrussell
antigen apply

################################################################################
#                                                                     General
#                                                               Configuration
#
################################################################################
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export ZSH=$HOME/.zsh/plugins/oh-my-zsh
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export VISUAL=nvim
export EDITOR=$VISUAL
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
#                                                                     Mappings
#
################################################################################
for a in $ZSH_ROOT_PATH/aliases/*.zsh
do
  source $a
done
