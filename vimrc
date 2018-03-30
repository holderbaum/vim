" vimrc

" Enable pathogen for plugin management
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on               " Enable syntax highlighting

" set showmatch           " Highlight matching brace
" 
" set visualbell          " Use visual bell (no beeping)
" set nocompatible        " Don't be backwards compatible to vi
" 
" set grepprg=git\ grep\ -n          " Use git for grepping
