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
set t_Co=256

set fileencodings=utf-8,cp932,iso-2022-jp,sjis
if has('win32')
  let ostype = "Win"
  let g:vimproc#download_windows_dll = 1
  let g:path = "C:/Users/t-sakai.DYNATECH/.cache/dein/repos/github.com/Shougo/dein.vim"
  let g:loadpath = "C:/Users/t-sakai.DYNATECH/.cache/dein/"
  set shell=cmd.exe
elseif has ('mac')
  let ostype = 'Mac'
  let g:path = '/.deinvim/dein/repos/github.com/Shougo/dein.vim/'
  let g:loadpath = '/.cache/dein/'
else
  let ostype = system('uname')
  let g:expath = expand('~/repos/github.com/Shougo/dein.vim')
  let g:homepath = '/home/takumi/'
endif

:source $VIMRUNTIME/macros/matchit.vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/takumi//repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state(homepath)
  call dein#begin(homepath)

  " Let dein manage dein
  " Required:
  call dein#add(expath)

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc', {'build' : 'make'})
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neocomplcache.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
  call dein#add('thinca/vim-quickrun')
  call dein#add('majutsushi/tagbar')
  call dein#add('scrooloose/syntastic')

  "collors
  call dein#add('dracula/vim')
  call dein#add('sjl/badwolf')

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
colorscheme dracula
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
let g:neocomplecache_enable_at_startu=1
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
