set guifont=IPAGothic:h12:w7
set number
set ruler
set cursorline
set cursorcolumn
set laststatus=2
set showmatch
set backspace=indent,eol,start
set whichwrap=b,s,[,],<,>
set scrolloff=3
set hidden
set confirm
set autoread
set noswapfile
set hlsearch
set ignorecase
set smartcase
set gdefault
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set clipboard=unnamed,unnamedplus
set mouse=a
set shellslash
set noerrorbells
set nrformats-=octal
set antialias=on
set title
set ambiwidth=double
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set listchars=eol:<,tab:>.,trail:-,
set list
set wildmenu
set wildmode=list:full
set noimdisable
set noimcmdline
set lazyredraw
set breakindent
set shell=cmd.exe
set fileencodings=utf-8,cp932,iso-2022-jp,sjis
:source $VIMRUNTIME/macros/matchit.vim


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=C:/Users/t-sakai.DYNATECH/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('C:/Users/t-sakai.DYNATECH/.cache/dein/')
  call dein#begin('C:/Users/t-sakai.DYNATECH/.cache/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('C:/Users/t-sakai.DYNATECH/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('sjl/badwolf')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  "call dein#load_toml('C:/Users/t-sakai.DYNATECH/.cache/dein/dein.toml')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
colorscheme badwolf
