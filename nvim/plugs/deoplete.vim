if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'deoplete-plugins/deoplete-jedi'

let g:python3_host_prog = '~/.pyenv/versions/neovim/bin/python3'
let g:deoplete#enable_at_startup = 1

"autocmd VimEnter * call deoplete#custom#source('ale', 'rank', 999)
