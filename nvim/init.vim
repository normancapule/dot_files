call plug#begin(stdpath('data') . '/plugged') 
  " File explorer
  Plug 'scrooloose/nerdtree'
  " Theme
  Plug 'morhetz/gruvbox'
  " Dev icons for nerdtree
  Plug 'ryanoasis/vim-devicons'
  " File / pattern search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" Config Section

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
  nnoremap <C-t> :tabnew<CR>
  " disable arrow keys
  noremap <left> <nop>
  noremap <up> <nop>
  noremap <down> <nop>
  noremap <right> <nop>
  map <leader>n :execute 'NERDTreeToggle '<CR>
  nnoremap \ :Rg<CR>
  " Reselect visual block after indent/outdent
  vnoremap < <gv
  vnoremap > >gv
  " Map vim movement keys to move buffer
  nmap <C-j> <C-W><C-J>
  nmap <C-k> <C-W><C-K>
  nmap <C-l> <C-W><C-L>
  nmap <C-h> <C-W><C-H>
  set splitbelow
  set splitright
" }

" FZF {
  nmap <C-p> :Files<CR>
  if executable('rg')
    let g:rg_derive_root='true'
  endif
  let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'
" }
