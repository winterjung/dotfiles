" Syntax highlighting
if has("syntax")
	syntax on
endif

""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""

" Show line number
set nu

" Show status bar always
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Scrollbar width
set sw=1

set autowrite
set autoread

" Show matched barckets
set showmatch

" Show current cursor position
set ruler

""""""""""""""""""""""""""""
" Indent / Tab
""""""""""""""""""""""""""""

" Auto indent
set autoindent

" Tab == 4 space
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Convert tab to space
set expandtab
set smarttab

""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""

" Highlight search results
set hlsearch

" Highlight matched results while typing
set incsearch

" Case insensitive
set ignorecase

set smartcase
