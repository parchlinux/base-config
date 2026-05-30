# Parch Linux zsh defaults
HISTSIZE=50000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

alias ls='ls --color=auto'
alias ll='ls -lah --group-directories-first --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias df='df -h'
alias du='du -h'

PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '
