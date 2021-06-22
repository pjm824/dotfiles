# requires nix-zsh-completions module
source $HOME/.dotfiles/zsh/external-modules/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=($HOME/.dotfiles/zsh/external-modules/nix-zsh-completions $fpath)

autoload -U compinit && compinit


# add nix to prompt
prompt_nix_shell_setup "$@"
