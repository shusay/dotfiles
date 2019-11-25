set nocompatible
filetype plugin off

" ------------------------------------- "
"  NeoBundle
" ------------------------------------- "

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------- "
"  Vim plugins
" ------------------------------------- "

"" Powerline
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'stephenmckinney/vim-solarized-powerline'
" Plugin
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'elzr/vim-json'
" NeoBundle 'alvinhuynh/vim-syntastic-scss-lint'

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

"" PHP
NeoBundle 'StanAngeloff/php.vim'

"" Quickrun
NeoBundle 'thinca/vim-quickrun'

"" Reffernse
NeoBundle 'thinca/vim-ref'
" bluewery
NeoBundle 'relastle/bluewery.vim'

" openbrowser
NeoBundle 'tyru/open-browser.vim'

" design/client
NeoBundle 'vim-scripts/indenthtml.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'tpope/vim-haml'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'stephpy/vim-yaml'
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'mattn/emmet-vim'

" editor config
NeoBundle 'editorconfig/editorconfig-vim'

" highspeed-grep
NeoBundle 'rking/ag.vim'

" NerdTree
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mbbill/undotree'

" colorizer
NeoBundle 'lilydjwg/colorizer'

" git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
" call neobundle#load_toml('~/.vim/neobundle.toml')
" call neobundle#load_toml('~/.vim/neobundlelazy.toml', {'lazy' : 1} )

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" ------------------------------------- "
"  VimSettings
" ------------------------------------- "

" PHP
set syn=php

" tab
set shiftwidth=2 tabstop=2
set expandtab
set smartindent

" 行番号
set number
"set cursorline

" 保存時に行末の空白除去
autocmd BufWritePre * :%s/\s\+$//ge

" backspace
set backspace=indent,eol,start

" mouse
set mouse=a

" Vimを使ってくれてありがとう、がうざい
set notitle

" スクロールが遅い
set lazyredraw
set ttyfast

" htmlのインデントが深いと遅くなる対策
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"

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

" tmux
set clipboard=unnamed,autoselect

" ビープ音を消す
set noerrorbells
set vb t_vb=

" スワップファイルを作らない
set noswapfile

" 対応括弧表示
set showmatch

" NERDTree's Keymap
nmap <silent> <C-e> :NERDTreeToggle<CR>

" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee

" インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" バッファを切り替えてもundoの効力を失わない
set hidden
set noundofile

" バックアップファイルを出力しないように
set nobackup

" コマンドラインの高さを1行に
set cmdheight=1

" 機種依存文字に幅を振る
set ambiwidth=double

set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" Vim-jsonのダブルクォート非表示を無効化
let g:vim_json_syntax_conceal = 0

"" lint
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['ruby', 'javascript', 'php', 'jade', 'haml', 'slim', 'scss', 'sass'],
                           \ 'passive_filetypes': []}
" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=235
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=2

" ------------------------------------- "
"  Neocomplete
" ------------------------------------- "
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

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

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#enable_snipmate_compatibility = 1
let g:loaded_syntastic_slim_slimrb_checker = 0

" Quickrun
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}
