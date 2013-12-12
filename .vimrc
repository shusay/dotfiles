set nocompatible
filetype plugin off

" ------------------------------------- "
"  NeoBundle
" ------------------------------------- "

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundleFetch
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugin
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \   'windows' : 'make -f make_mingw32.mak',
      \   'cygwin' : 'make -f make_cygwin.mak',
      \   'mac' : 'make -f make_mac.mak',
      \   'unix' : 'make -f make_unix.mak',
      \   },
      \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimfiler.vim'
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
NeoBundle 'tyru/open-browser.vim'

" design/client
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'tpope/vim-haml'
NeoBundle 'cakebaker/scss-syntax.vim'

" indent-color
NeoBundle 'nathanaelkane/vim-indent-guides'

" highspeed-grep
NeoBundle 'rking/ag.vim'

" NerdTree
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mbbill/undotree'

" colorizer
NeoBundle 'lilydjwg/colorizer'

filetype plugin indent on

" Installation Check
NeoBundleCheck

" ------------------------------------- "
"  VimSettings
" ------------------------------------- "

" tab
set shiftwidth=2 tabstop=2
set expandtab
set smartindent
set number
autocmd BufWritePre * :%s/\s\+$//ge "保存時に行末の空白除去

" backspace
set backspace=indent,eol,start

" mouse
set mouse=a

" powerline
set t_Co=256
set t_ut=
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'

"" encoding
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

"" search
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

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
set clipboard=unnamed,autoselect

" ビープ音を消す
set noerrorbells
set vb t_vb=

" スワップファイルを作らない
set noswapfile

" 対応括弧表示
set showmatch

" vim-indent-guides設定
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 2
" 自動カラーを無効にする
let g:indent_guides_auto_colors=0
" 奇数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=11
" 偶数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black
" ハイライト色の変化の幅
let g:indent_guides_color_change_percent = 20

" NERDTree's Keymap
nmap <silent> <C-e> :NERDTreeToggle<CR>

" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee

" インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" バッファを切り替えてもundoの効力を失わない
set hidden
