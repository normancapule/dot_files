call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

"Config Section

" General {
  set autoindent
  set smartindent
  set expandtab
  set shiftwidth=2
  set tabstop=2
  set nopaste
  set clipboard=unnamed
  set ttyfast
  " Enable syntax highlighting
  filetype plugin indent on
  syntax on
  " Unlimited persistent undo:
  set undofile
  set undodir=~/.config/nvim/undo
" }

" Themes {
  colorscheme gruvbox
  set background=dark
  " set background=light
" }

" Mapping {
  let mapleader = " "
  noremap <left> <nop>
  noremap <up> <nop>
  noremap <down> <nop>
  noremap <right> <nop>
  map <leader>n :execute 'NERDTreeToggle '<CR>
" }
