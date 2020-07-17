# Prerequisites
- [fzf](https://github.com/junegunn/fzf) for fuzzy-search files in terminal
- [git bash completions](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) so that bash would complete branchnames etc on Tab.

#  Linux Setup
- Some good recommentations from [this article](https://opensource.com/article/20/6/modern-linux-command-line-tools)

```sh
  sudo apt install tldr htop ncdu jq
  # fd-find is not available as .deb on Ubuntun 18.04
  cargo install fd-find
```

#  MacOS Setup
- Install [iTerm2](https://www.iterm2.com/)
- Install [rustup](https://www.rust-lang.org/tools/install)
- Install [rust](https://www.rust-lang.org/tools/install): `rustup toolchain install stable`
- Install [ripgrep](https://github.com/BurntSushi/ripgrep): `cargo install ripgrep`
- Install [brew](https://brew.sh/)

- Install [nvm](https://github.com/nvm-sh/nvm)
- Install [node](https://nodejs.org/en  /): `nvm install stable`

- Install [exa](https://the.exa.website/): `brew install exa`
- Install [fzf](https://github.com/junegunn/fzf): (install with .git so that it works with vim and bash)

- Install [bash-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash): `brew install bash-completion`
