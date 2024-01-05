# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines
setopt HIST_IGNORE_DUPS

# append to the history file, don't overwrite it
setopt APPEND_HISTORY

# for setting history length
HISTSIZE=100000
HISTFILESIZE=100000

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="%n:%~$ "
    ;;
*)
    ;;
esac


# Set custom prompt user@dir(git_branch_name)$
function git_branch_name {
    # if not inside git repo - do nothing.
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
      return
    fi
    branch=$(git rev-parse --abbrev-ref HEAD)
    if [ "$branch" = "HEAD" ]
    then
      branch="HEAD detached at $(git rev-parse --short HEAD)"
    fi
    echo "(%F{green}$branch%f)"
}

# Enable substitution in the prompt.
setopt prompt_subst
# Config for prompt. PS1 synonym.
prompt='%n:%~$(git_branch_name)$ '


# Alias definitions.
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# enable programmable completion features
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit
fpath=(/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.zsh $fpath)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://github.com/rupa/z
[ -s ~/bin/z.sh ] && source ~/bin/z.sh
. "$HOME/.cargo/env"

export PATH=/Users/yurys/Library/Python/3.9/bin:$PATH
