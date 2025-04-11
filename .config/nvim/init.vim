set relativenumber
set colorcolumn=80
set wrap
set textwidth=80

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

call plug#begin()
" Plug 'haishanh/night-owl.vim'
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'folke/tokyonight.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set termguicolors
" colorscheme catppuccin-macchiato
colorscheme tokyonight-night
