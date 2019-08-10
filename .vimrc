execute pathogen#infect()

" settings
syntax on
filetype plugin indent on
set nocompatible 
set number

" colors
set background=dark
colorscheme solarized

" Nerdtree setting
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1

autocmd! VimEnter * NERDTree | wincmd w
