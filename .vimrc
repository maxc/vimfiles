syntax on

set term=xterm-256color
set nocompatible
set nowrap
set backspace=2
set autoindent
set noswapfile
set expandtab
set sw=2
set sts=2
set ffs=unix
set laststatus=2
set ignorecase
set hlsearch
set encoding=utf-8
set mouse=a
set number
set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_theme='luna'
let g:SuperTabDefaultCompletionType = "<c-n>"
colorscheme termschool
