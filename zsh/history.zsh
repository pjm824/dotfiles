HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
setopt append_history
setopt share_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify

# hotkeys for command search
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^R' history-incremental-search-backward

