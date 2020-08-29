let b:ale_linters = ['flake8', 'mypy']
let b:ale_fixers = ['isort', 'black', 'reorder-python-imports']

let g:ale_python_flake8_change_directory = 1
let g:ale_python_flake8_executable = '/Users/paul.min/.pyenv/versions/neovim/bin/flake8'
let g:ale_python_flake8_options = '--max-line-length 120'

let g:ale_python_mypy_executable = '/Users/paul.min/.pyenv/versions/neovim/bin/mypy'
let g:ale_python_mypy_options = '--ignore-missing-imports'

let g:ale_python_isort_change_directory = 1
let g:ale_python_isort_executable = '/Users/paul.min/.pyenv/versions/neovim/bin/isort'

let g:ale_python_black_change_directory = 1
let g:ale_python_black_executable = '/Users/paul.min/.pyenv/versions/neovim/bin/black'
