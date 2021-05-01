# use kitty for diff
alias d="kitty +kitten diff"
alias gd="git difftool --no-symlinks --dir-diff"

# set tab name to current path
precmd () {print -Pn "\e]0;%~\a"}
