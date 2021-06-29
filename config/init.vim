set nocompatible
set number

" configuration
""" easy sourcing
map <C-a> :source ~/.config/nvim/init.vim
""" open config file
command! Config e ~/.config/nvim/init.vim

" fzf
map <C-p> :Files <Enter>
set runtimepath^=~/.fzf
set runtimepath^=~/.local/share/nvim/site/start/fzf.vim
