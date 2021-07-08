# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.dotfiles

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source zshlocal file if exists
if [[ -f ~/.zshlocal ]]; then;
    source ~/.zshlocal
fi

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/*.zsh)

autoload -U compinit && compinit

for file in $config_files
do
  source $file
done

unset config_files

# Correct spelling for commands
setopt correct

# don't expand aliases _before_ completion has finished (like: git comm-[tab])
setopt complete_aliases

# Long running processes should return time after they complete. Specified in seconds.
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

# Java classpath
export CLASSPATH="/Users/paul.min/m2/repository"

# use exa instead of ls
alias ls='exa'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/paul.min/.sdkman"
[[ -s "/Users/paul.min/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/paul.min/.sdkman/bin/sdkman-init.sh"
