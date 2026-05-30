# Parch Linux fish defaults
set -gx EDITOR vim
set -gx VISUAL vim
set -gx PAGER less
set -gx MANPAGER 'less -R'

alias ll 'ls -lah --group-directories-first --color=auto'
alias la 'ls -A --color=auto'
alias grep 'grep --color=auto'
alias diff 'diff --color=auto'
alias df 'df -h'
alias du 'du -h'
