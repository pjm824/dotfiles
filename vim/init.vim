call plug#begin('~/.local/share/nvim/plugged')

Plug 'chrisbra/color_highlight'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'airblade/vim-gitgutter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'JazzCore/ctrlp-cmatcher'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'sbdchd/neoformat'


" autocomplete
Plug 'davidhalter/jedi-vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"Plug 'junegunn/fzf'
"Plug 'sheerun/vim-polyglot'
"Plug 'honza/vim-snippets'
"Plug 'scrooloose/syntastic'
"Plug 'xsunsmile/showmarks'
"Plug 'gregsexton/gitv'
"Plug 'justinmk/vim-sneak'
"Plug 'henrik/vim-indexed-search'
"Plug 'nelstrom/vim-visual-star-search'
"Plug 'mileszs/ack.vim'
"Plug 'skwp/greplace.vim'
"Plug 'Lokaltog/vim-easymotion'
" These bundles introduce new textobjects into vim,
" For example the Ruby one introduces the 'r' text object
" such that 'var' gives you Visual Around Ruby
"Plug 'austintaylor/vim-indentobject'
"Plug 'coderifous/textobj-word-column.vim'
"Plug 'kana/vim-textobj-datetime'
"Plug 'kana/vim-textobj-entire'
"Plug 'kana/vim-textobj-function'
"Plug 'kana/vim-textobj-user'
"Plug 'lucapette/vim-textobj-underscore'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'wellle/targets.vim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'Raimondi/delimitMate'
"Plug 'Shougo/neocomplete'
"Plug 'godlygeek/tabular'
"Plug 'tomtom/tcomment_vim'
"Plug 'vim-scripts/camelcasemotion'
"Plug 'kristijanhusak/vim-multiple-cursors'
"Plug 'bogado/file-line'

call plug#end()

" source regular vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" point vim to system python
"let g:python_host_prog = '/full/path/to/neovim2/bin/python'
let g:python3_host_prog = '/Users/paul/.pyenv/versions/3.6.5/bin/python'


"""""""""" Plugin Specific settings """""""""""
""""" jedi vim
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

