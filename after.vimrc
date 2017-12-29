" General {
  " Silence bell
  set vb t_vb=
  " We're running Vim, not Vi!
  set nocompatible
  " Enable syntax highlighting
  filetype plugin indent on
  syntax on
  " Set 5 lines to the cursor - when moving vertically
  set scrolloff=0
  " This orders Vim to open the buffer.
  set switchbuf=useopen
  " Undo {
    if has('persistent_undo')
      set undodir=~/.vim/tmp/undo//     " undo files
      set undofile
      set undolevels=3000
      set undoreload=10000
    endif
    set backupdir=~/.vim/tmp/backup// " backups
    set directory=~/.vim/tmp/swap//   " swap files
    set backup
    set noswapfile
  " }
  " NERDTREE
  let g:NERDDefaultAlign = 'left'
  " Disable the scrollbars (NERDTree)
  set guioptions-=r
  set guioptions-=L
  " Keep NERDTree window fixed between multiple toggles
  set winfixwidth
" }

" Mapping {
  let mapleader = " "
  nnoremap <C-t> :tabnew<CR>
  nnoremap vv <C-w>v
  nnoremap ss <C-w>s
  nnoremap <Leader>b :%s/
  nnoremap <Leader>bb :Buffers<CR>
  " clear highlight after search
  noremap <silent><Leader>/ :nohls<CR>
  " hardcore lol
  noremap <left> <nop>
  noremap <up> <nop>
  noremap <down> <nop>
  noremap <right> <nop>
  map <leader>n :execute 'NERDTreeToggle '<CR>
" }

" Buffer {
  nmap <C-j> <C-W><C-J>
  nmap <C-k> <C-W><C-K>
  nmap <C-l> <C-W><C-L>
  nmap <C-h> <C-W><C-H>

  set splitbelow
  set splitright
" }

" Formatting {
  set autoread
  set autoindent
  set tabstop=2
  set clipboard=unnamed
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set smarttab
" }

" Vim UI {
  set laststatus=2
  set backspace=indent,eol,start
  set linespace=0
  set nu
  set incsearch
  " set background=light
  set background=dark
  colorscheme solarized
  " Reselect visual block after indent/outdent
  vnoremap < <gv
  vnoremap > >gv
  let g:airline_powerline_fonts = 1
" }

" SEARCH {
  set ignorecase
  set smartcase
  set showmatch
  set gdefault
  set hlsearch
" }

" Format JSON
nmap =j :%!python -m json.tool<CR>

" FZF {
  nmap <C-p> :Files<CR>
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  let $FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
    \   <bang>0)
" }

" Clear autocmd before adding. Prevent autocmd spam
" http://stackoverflow.com/questions/19030290/syntax-highlighting-causes-terrible-lag-in-vim
augroup vimrc_autocmd
  autocmd!
  " Remove trailing whitespaces when saving
  autocmd BufWritePre * :%s/\s\+$//e

augroup END

" Ale {
  if globpath(&rtp, "plugin/ale.vim") == "" | finish | endif
  let g:ale_javascript_eslint_executable = 'node_modules/eslint/bin/eslint.js'
  let g:ale_lint_on_text_changed=0
  let g:ale_lint_on_save=1
  let g:ale_linters = {
  \ 'html': ['htmlhint']
  \ }
  let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
  let g:ale_sign_error = 'E '
  let g:ale_sign_warning = 'W '
  let g:airline#extensions#ale#enabled = 1
" }
