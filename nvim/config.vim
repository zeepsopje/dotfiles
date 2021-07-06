set nocompatible
set nowrap
set number
set autoindent
set tabstop=4
set shiftwidth=4
noh

let loaded_matchparen=1
let mapleader=","

" appearance
""" Theme
colorscheme PaperColor
set background=dark

" configuration
""" easy sourcing
map <C-a> :source ~/.config/nvim/init.vim <Enter>
""" open config fil
command! Config e ~/.config/nvim/init.vim

" fzf
map <C-p> :Files <Enter>
map <C-f> :Rg <Enter>
set runtimepath^=~/.fzf
set runtimepath^=~/.local/share/nvim/site/start/fzf.vim

" emmet
let g:user_emmet_leader_key=','
