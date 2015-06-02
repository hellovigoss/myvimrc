"Set mapleader
let mapleader = ","

set encoding=utf-8
set nu
set tabstop=4
set autoindent
set autochdir
set cindent
set shiftwidth=4
set ignorecase smartcase

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ctrlp.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'ctags.vim'
Plugin 'bling/vim-airline'
Plugin 'Solarized'
Plugin 'bufexplorer.zip'
Plugin 'taglist.vim'
Plugin 'phpcomplete.vim'
Plugin 'ack.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'comments.vim'
Plugin 'https://github.com/eshion/vim-sync.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" solarized color
syntax enable
" set background=dark
" colorscheme solarized
" airline
set laststatus=2
set ttimeoutlen=50

" NERDtree
nmap <F2> <Esc>:NERDTreeToggle<CR>

" Taglist
nmap <F3> <Esc>:Tlist<CR>
let Tlist_Display_Prototype = 0 

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php']
let g:syntastic_html_checkers = ['jslint']
let g:syntastic_js_checkers = ['jslint']

"ctags
set tags=./tags

"ctrlp
let g:ctrlp_mruf_case_sensitive = 0

