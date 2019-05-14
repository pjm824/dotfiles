#!/bin/zsh

install-zgen() {
  # Clone zgen if you haven't already
  if [[ -z "$ZGEN_PARENT_DIR" ]]; then
    ZGEN_PARENT_DIR=$HOME
  fi
  if [[ ! -f $ZGEN_PARENT_DIR/zgen/zgen.zsh ]]; then
    if [[ ! -d "$ZGEN_PARENT_DIR" ]]; then
      mkdir -p "$ZGEN_PARENT_DIR"
    fi
    pushd $ZGEN_PARENT_DIR
    git clone git@github.com:tarjoilija/zgen.git "${ZGEN_PARENT_DIR}/.zgen"
    popd
  fi
  source $ZGEN_PARENT_DIR/.zgen/zgen.zsh
  unset ZGEN_PARENT_DIR
}

load-plugin-list() {
  echo "Creating a zgen save"
  ZGEN_LOADED=()
  ZGEN_COMPLETIONS=()

  zgen oh-my-zsh

  # If zsh-syntax-highlighting is bundled after zsh-history-substring-search,
  # they break, so get the order right.
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search

  # Set keystrokes for substring searching
  zmodload zsh/terminfo
  bindkey "$terminfo[kcuu1]" history-substring-search-up
  bindkey "$terminfo[kcud1]" history-substring-search-down

  # Automatically run zgen update and zgen selfupdate every 7 days.
  zgen load unixorn/autoupdate-zgen

  # Warn you when you run a command that you've set an alias for without using the alias.
  zgen load djui/alias-tips

  # Tom Limoncelli's tooling for storing private information (keys, etc)
  # in a repository securely by encrypting them with gnupg.
  zgen load StackExchange/blackbox

  # Load some oh-my-zsh plugins
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/chruby
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/python

  if [ $(uname -a | grep -ci Darwin) = 1 ]; then
    # Load macOS-specific plugins
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/osx
  fi

  # Load more completion files for zsh from the zsh-lovers github repo.
  zgen load zsh-users/zsh-completions src

  # Docker completion
  zgen load srijanshetty/docker-zsh

  # Load me last
  GENCOMPL_FPATH=$HOME/.zsh/complete

  # Add Fish-like autosuggestions to your ZSH.
  zgen load zsh-users/zsh-autosuggestions

  # k is a zsh script / plugin to make directory listings more readable,
  # adding a bit of color and some git status information on files and
  # directories.
  zgen load supercrabtree/k

  zgen load chrissicool/zsh-256color
  zgen load bhilburn/powerlevel9k powerlevel9k

  # Save it all to init script.
  zgen save
}

install-zgen
load-plugin-list

