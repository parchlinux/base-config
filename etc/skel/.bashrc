# Parch Linux shell defaults
export HISTSIZE=50000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend checkwinsize

alias ls='ls --color=auto'
alias ll='ls -lah --group-directories-first --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias df='df -h'
alias du='du -h'

PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
