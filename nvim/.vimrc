set nocompatible              " be iMproved, required
set hidden

" ================ General Config ====================

let mapleader=" "                  " Set leader key to space
set number                         " Line numbers are good
set relativenumber                 " Relative numbers are even better
set backspace=indent,eol,start     " Allow backspace in insert mode
set history=1000                   " Store lots of :cmdline history
set showcmd                        " Show incomplete cmds down the bottom
set showmode                       " Show current mode down the bottom
set gcr=a:blinkon0                 " Disable cursor blink
set visualbell                     " No sounds
set autoread                       " Reload files changed outside vim
set nowrap                         " Don't wrap lines
set linebreak                      " Wrap lines at convenient points
"set list listchars=tab:\ \ ,trail: " Display tabs and trailing spaces visually
set clipboard=unnamed              " Use system clipboard for yanking and pasting
set splitbelow                     " open new panes to bottom
set splitright                     " open new panes to right
syntax on                          " turn on syntax highlighting
filetype plugin indent on
set encoding=utf-8

" so that J doesn't add a space
nnoremap J gJ

" for theme colors
if has('termguicolors')
  set termguicolors
endif

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=0
set expandtab

" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Navigation =======================
" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" ================= Buffers ========================
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
nmap <leader>d :bp\|bd! #<CR>

" ================= Windows ========================
" Navigate windows using ctrl+h/j/k/l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
