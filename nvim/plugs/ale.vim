Plug 'dense-analysis/ale'

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_autoimport = 1
let g:float_preview#docked = 0

nmap <leader>ag <plug>(ale_go_to_definition)
nmap <leader>at <plug>(ale_go_to_type_definition)
nmap <leader>ah <plug>(ale_hover)
nmap <leader>ad <plug>(ale_documentation)
nmap <leader>ap <plug>(ale_detail)
nmap <leader>af <plug>(ale_fix)
nmap <leader>al <plug>(ale_lint)
nmap <leader>ar <plug>(ale_find_references)
