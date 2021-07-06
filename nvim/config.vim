set nocompatible
set nowrap
set number

" appearance
""" Theme
colorscheme PaperColor
set background=dark

" configuration
""" easy sourcing
map <C-a> :source ~/.config/nvim/init.vim
""" open config file
command! Config e ~/.config/nvim/init.vim

" fzf
map <C-p> :Files <Enter>
map <C-g> :GFiles <Enter>
map <C-f> :Rg <Enter>
set runtimepath^=~/.fzf
set runtimepath^=~/.local/share/nvim/site/start/fzf.vim
