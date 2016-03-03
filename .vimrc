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
set number
set laststatus=2
set ignorecase
set hlsearch
set encoding=utf-8
set mouse=a

" for Makefiles: Hard tabs of width 2
autocmd FileType make set ts=2

" And Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.cql set filetype=cql

" And Java
autocmd FileType java set sw=2

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

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:airline_theme='luna'
colorscheme termschool
