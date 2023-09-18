export EDITOR=nvim
export VISUAL="$EDITOR"

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

#Sync Apps to my shell path
for binDir in $HOME/Apps/*/bin
do
  export PATH="$PATH:$binDir"
done
