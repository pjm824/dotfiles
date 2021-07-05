" source regular vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin(stdpath('data') . '/plugged')
for f in glob("~/.config/nvim/plugs/*.vim", 0, 1) | exe "source" f | endfor
call plug#end()


""" Themes
if has('termguicolors')
    set termguicolors
endif
let g:airline_theme = 'everforest'
colorscheme everforest
"colors deus


""" Make Terminal better
set shell=/usr/local/bin/zsh
augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

" exit terminal mode using esc
tnoremap <Esc> <C-\><C-n>
