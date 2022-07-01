source ~/.bashrc
source ~/.git-completion.bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


##
# Your previous /Users/yurys/.bash_profile file was backed up as /Users/yurys/.bash_profile.macports-saved_2019-07-22_at_18:27:10
##

# MacPorts Installer addition on 2019-07-22_at_18:27:10: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/depot_tools"
export PATH="$PATH:$HOME/dotfiles/git-scripts"

source ~/.iterm2_shell_integration.bash

# Output of /usr/libexec/java_home
export JAVA_HOME=/Users/yurys/Library/Java/JavaVirtualMachines/openjdk-15/Contents/Home
export PATH=$PATH:$HOME/apache-maven-3.6.3/bin

# Add Jbang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"
