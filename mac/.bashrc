[ -f ~/.fzf.bash ] && source ~/.fzf.bash

function set_command_prompt {
    # Show git branch in the terminal status line
    PS1='\u:\w$ '

    # if not inside git repo - do nothing.
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
      return
    fi
    branch=$(git rev-parse --abbrev-ref HEAD)
    if [ "$branch" = "HEAD" ]
    then
      branch="HEAD detached at $(git rev-parse --short HEAD)"
    fi
    PS1="\u:\w(\[$(tput setaf 2)\]$branch\[$(tput sgr0)\])$ "
}

PROMPT_COMMAND=set_command_prompt

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
