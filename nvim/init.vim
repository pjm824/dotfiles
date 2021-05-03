" source regular vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.local/share/nvim/plugged')
for f in glob("~/.dotfiles/nvim/*/plugs.vim", 0, 1) | exe "source" f | endfor
call plug#end()

for f in glob("~/.dotfiles/nvim/*/settings.vim", 0, 1) | exe "source" f | endfor
