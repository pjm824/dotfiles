-- automatically install packer if it isn't installed
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua


require('plugins.lsp')
require('plugins.telescope')
require('plugins.compe')


return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'	

    -- airline
    use 'vim-airline/vim-airline'          -- for the status line at the bottom
    use 'itchyny/vim-gitbranch'            -- show git branch in airline

    -- home screen
    use 'mhinz/vim-startify'

    -- git
    use 'tpope/vim-git'                    -- git runtime files(syntax, indent, etc)
    use 'APZelos/blamer.nvim'              -- git blame
    use 'airblade/vim-gitgutter'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-lua/popup.nvim'
        }
    }

    -- text
    use 'Yggdroot/indentLine'              -- show indent lines
    use 'Raimondi/delimitMate'             -- automatically close parans, brackets, etc
    use 'chrisbra/color_highlight'         -- highlight color names and codes in the same color that they represent

    -- potential themes to try
    -- use 'sainnhe/everforest'
    -- use 'junegunn/seoul256.vim'
    -- use 'morhetz/gruvbox'
    -- use 'ajmwagar/vim-deus'




--" Plug 'godlygeek/tabular'              " easily align texts
--" Plug 'vim-scripts/camelcasemotion'    " navigate inside camel case words
--" Plug 'tomtom/tcomment_vim'            " language aware comments
--" Plug 'tpope/vim-surround'
--" Plug 'tpope/vim-fugitive'             (try removing tpope/vim-git when using this)
--" Plug 'vim/vinegar'                    " improvements to netrw(:Explore)
--" Plug 'junegunn/peekaboo'
--" Plug 'justinmk/vim-sneak'             " jump to any location specified by two characters
--" Plug 'wellle/targets.vim'             " add more text objects
--" Plug 'Lokaltog/vim-easymotion'        " improvements to navigating
--"
--" Plug 'tpope/vim-commentary'
--" Plug 'tpope/vim-sensible'
--" Plug 'tpope/vim-unimpaired'
end)
