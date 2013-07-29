set nocompatible
filetype plugin indent off

set shiftwidth=2 tabstop=2
set expandtab
set autoindent smartindent
set number
autocmd BufWritePre * :%s/\s\+$//ge "保存時に行末の空白除去

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundleFetch
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugin
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
"" javascript
NeoBundle 'jQuery'
"" ruby
NeoBundle 'vim-ruby/vim-ruby', {
            \ 'autoload' : {
            \     'filetypes' : ['ruby']
            \ }}
NeoBundle 'vim-scripts/ruby-matchit', {
            \ 'autoload' : {
            \     'filetypes' : ['ruby']
            \ }}
NeoBundle 'Shougo/neocomplcache-rsense', {
            \ 'autoload' : {
            \     'filetypes' : ['ruby']
            \ }}
"" Powerline
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'stephenmckinney/vim-solarized-powerline'
"" Quickrun
NeoBundle 'thinca/vim-quickrun'

"" Reffernse
NeoBundle 'thinca/vim-ref'
" Solarized
NeoBundle 'altercation/vim-colors-solarized'

" openbrowser
NeoBundleInstall 'tyru/open-browser.vim'

filetype plugin indent on

" Installation Check
NeoBundleCheck

" powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'

"" encoding
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

"" search
set incsearch
set hlsearch

set ignorecase
set smartcase
set wrapscan

"" Display
set title
set laststatus=2
set nowrap

" color_scheme
syntax enable
set background=dark
let g:Powerline_theme = 'short'
let g:Powerline_colorscheme = 'Solarized256_dark'
colorscheme solarized

" tmux
set clipboard=unnamed
