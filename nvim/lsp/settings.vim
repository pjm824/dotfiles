
" =================== completion-nvim ===================
" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

" lsp completion-nvim settings
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" completion matching strategy order
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

let g:completion_matching_smart_case = 1
let g:completion_trigger_keyword_length = 3


" ======================= pyright =======================
" pyright
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
EOF
