let maplocalleader = "\\"

" VUNDLE {
  let s:bundle_path=$HOME."/.vim/bundle/"
  execute "set rtp+=".s:bundle_path."vundle/"
  call vundle#rc()

  Bundle 'gmarik/vundle'
" }

" General {
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-surround'
    Bundle 'scrooloose/nerdtree'
    Bundle 'Spaceghost/vim-matchit'
    Bundle 'terryma/vim-multiple-cursors'
    Bundle 'junegunn/fzf.vim'
    Bundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" }

" Fancy {
    Bundle 'vim-airline/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    Bundle 'powerline/powerline'
" }

" Coding {
    Bundle 'majutsushi/tagbar'
    Bundle 'gregsexton/gitv'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'tpope/vim-fugitive'
    Bundle 'editorconfig/editorconfig-vim'
" }

" HTML {
    Bundle 'tpope/vim-haml'
    Bundle 'tpope/vim-markdown'
    Bundle 'slim-template/vim-slim'
    Bundle 'ap/vim-css-color'
    Plugin 'digitaltoad/vim-pug'
" }

" Ruby {
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-rails'
    Plugin 'thoughtbot/vim-rspec'
" }

" Elixir {
    Plugin 'slashmili/alchemist.vim'
    Plugin 'elixir-lang/vim-elixir'
" }

" CSS {
    Bundle 'hail2u/vim-css3-syntax'
" }

" JS {
    Bundle 'pangloss/vim-javascript'
    Bundle 'mxw/vim-jsx'
    Bundle 'Raimondi/delimitMate'
" }

" Color {
    Bundle 'Elive/vim-colorscheme-elive'
    Bundle 'aaron-edwards/vim-solarized-patched'
" }

" Load addidional configuration (ie to overwrite shorcuts) {
if filereadable(expand("~/.vim/after.vimrc"))
  source ~/.vim/after.vimrc
endif
" }

