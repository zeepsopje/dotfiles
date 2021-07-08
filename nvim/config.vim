set nocompatible
set nowrap
set number
set autoindent
set filetype
set tabstop=2
set shiftwidth=2
noh

let mapleader=","
let g:loaded_matchparen=1

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
map <C-g> :GFiles <Enter>
map <C-f> :Rg <Enter>
set runtimepath^=~/.fzf
set runtimepath^=~/.local/share/nvim/site/start/fzf.vim

" emmet
let g:user_emmet_leader_key=","
