vim.api.nvim_exec(
[[
" set terminal to zsh
source ~/.vimrc

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
]],
true)
