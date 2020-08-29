" source regular vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


call plug#begin('~/.local/share/nvim/plugged')
for f in glob("~/.dotfiles/nvim/plugs/*.vim", 0, 1) | exe "source" f | endfor
call plug#end()


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
