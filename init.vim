" General
" ------------------------------ "
set nocompatible
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set termguicolors
noswapfile
" set signcolumn=no
" nohlsearch

" Global options
" ----------------------------------------------------------- "
let g:mapleader=','
let g:user_emmet_leader_key=','
let g:loaded_matchparen=1

" Plugins
" ----------------------------------------------------------- "
call plug#begin()
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/wombat256.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-scripts/Spacegray.vim'
Plug 'balanceiskey/vim-framer-syntax'
Plug 'davidosomething/vim-colors-meh'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'romainl/apprentice'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/landscape.vim'
Plug 'sjl/badwolf'
Plug 'tlhr/anderson.vim'
Plug 'morhetz/gruvbox'
Plug 'bradcush/nvim-base16'
Plug 'MaxMEllon/vim-jsx-pretty'
call plug#end()

" Behaviour
" ----------------------------------------------------------- "
" Faster terminal redraw
set ttyfast

" <Lightline>
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'apprentice',
			\ }

" Sync clipboard with OS
set clipboard+=unnamedplus

" <COC>
source ~/.config/nvim/coc.vim
" </COC>

" Appearance
" ----------------------------------------------------------- "
colorscheme molokai
syntax on

" Custom highlights
" ----------------------------------------------------------- "
" Match background with terminal
hi Normal guibg=NONE
hi EndOfFile guibg=NONE
hi EndOfBuffer guibg=NONE
hi CocUnusedHighlight guibg=Black 

" Line number
hi LineNr guibg=NONE

" <FZF>
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_layout = { "window": "-tabnew" }

" Binds
" ----------------------------------------------------------- "
" Source this file
nnoremap <leader>a <cmd>source ~/.config/nvim/init.vim<CR>

" <FZF>
nnoremap <leader>f <cmd>Files<CR>
nnoremap <leader>m <cmd>Rg<CR>
nnoremap <leader>conf <cmd>FZF ~/.config<CR>
" </FZF>

" Save file as super user
ca w!! w !sudo tee "%"

" Functions
" ----------------------------------------------------------- "
" ... quiet in here

" Overrides
" ----------------------------------------------------------- "
" set signcolumn=no

" C Filetype
" ----------------------------------------------------------- "
au FileType c set ts=8
au FileType c set shiftwidth=8
