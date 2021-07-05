# Sort git branches chronologically
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# Open files from terminal
alias o='xdg-open'

# Common ls args
alias ll='ls -lgGh --group-directories-first'
alias la='ls -lAh --group-directories-first'
alias lb='ls -1sSh --group-directories-first --block-size="1K"'
alias l='ls -1s --group-directories-first'

alias gm=$HOME/v8/v8/tools/dev/gm.py
alias um='git pull upstream master'
