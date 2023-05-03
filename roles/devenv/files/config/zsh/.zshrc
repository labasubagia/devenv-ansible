# BASE ZSH CONFIG

# AUTOCOMPLETION

# initialize autocompletion
autoload -Uz compinit && compinit

# history setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# GENERAL

# (bonus: Disable sound errors in Zsh)
# never beep
setopt NO_BEEP

alias mv="mv -iv"
alias cp="cp -iv"

# GENERATED CONFIG
# ------