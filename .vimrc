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
let g:vimproc#download_windows_dll = 1
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
  call dein#add('Shougo/vimproc', {'build' : 'make'})
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('sjl/badwolf')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
  call dein#add('thinca/vim-quickrun')
  call dein#add('majutsushi/tagbar')
  call dein#add('scrooloose/syntastic')

  "haskell
  call dein#add('neovimhaskell/haskell-vim')
  call dein#add('kana/vim-filetype-haskell')
  call dein#add('enomsg/vim-haskellConcealPlus')
  call dein#add('eagletmt/ghcmod-vim')
  call dein#add('eagletmt/neco-ghc')
  call dein#add('Twinside/vim-hoogle')
  call dein#add('mpickering/hlint-refactor-vim')
  call dein#check_clean()
  
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
set tags=tags;/,codex.tags;/
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }
