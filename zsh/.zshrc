### setting up antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

### use GNU coreutils
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman:$MANPATH"

### correct with thefuck
eval $(thefuck --alias)

### use starship.rs for prompt
eval "$(starship init zsh)"

### config for marlonrichert/zsh-autocomplete
bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete
zstyle ':autocomplete:*complete*:*' insert-unambiguous yes	# all Tab widgets
zstyle ':autocomplete:*history*:*' insert-unambiguous yes	# all history widgets
zstyle ':autocomplete:menu-search:*' insert-unambiguous yes	# ^S
zstyle ':autocomplete:*' add-space executables aliases functions builtins reserved-words commands

### aliases
alias ls='eza'
alias vim='nvim'

### pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

