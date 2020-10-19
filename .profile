# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/usr/lib/ccache:$PATH
export PATH=$PATH:$HOME/depot_tools
export PATH=$PATH:$HOME/git-scripts

# to avoid
# Gtk-Message: 09:12:38.520: Failed to load module "canberra-gtk-module"
# see https://askubuntu.com/questions/208431/failed-to-load-module-canberra-gtk-module
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/gtk-3.0/modules:$LD_LIBRARY_PATH
# to avoid
# GLib-GIO-Message: 09:17:03.832: Using the 'memory' GSettings backend.  Your settings will not be saved or shared with other applications.
# see https://stackoverflow.com/questions/44934641/glib-gio-message-using-the-memory-gsettings-backend-your-settings-will-not-b
export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# Preserve history across terminals
export HISTCONTROL=ignorespace:ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"


export INPUTRC=~/.inputrc
export EDITOR=vim
