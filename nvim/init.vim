call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/color_highlight'         " highlight color names and codes in the same color that they represent
Plug 'christoomey/vim-tmux-navigator'   " navigate between tmux and vim
Plug 'tpope/vim-git'                    " git runtime files(syntax, indent, etc)
Plug 'Yggdroot/indentLine'              " show indent lines

Plug 'dense-analysis/ale'

""" styling
Plug 'vim-airline/vim-airline'          " for the status line at the bottom
"Plug 'junegunn/seoul256.vim'            " theme
Plug 'ajmwagar/vim-deus'



"""  plugins to try...
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'junegunn/fzf'
" Plug 'preservim/nerdtree'
" Plug 'sbdchd/neoformat'               " code formatter
" Plug 'tpope/vim-fugitive'
" Plug 'ncm2/ncm2'                      " autocomplete
" Plug 'Shougo/neocomplete'             " autocomplete
" Plug 'ervandew/supertab               " perform completions in insert mode with tab
" Plug 'justinmk/vim-sneak'             " jump to any location specified by two characters
" Plug 'Lokaltog/vim-easymotion'        " improvements to navigating
" Plug 'wellle/targets.vim'             " add more text objects
" Plug 'Raimondi/delimitMate'           " automatically close parans, brackets, etc
" Plug 'godlygeek/tabular'              " easily align texts
" Plug 'tomtom/tcomment_vim'            " language aware comments
" Plug 'vim-scripts/camelcasemotion'    " navigate inside camel case words

call plug#end()

" source regular vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

"""""""""" Plugin Specific settings """""""""""

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

