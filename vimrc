set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'tpope/vim-fugitive'

Plugin 'mhinz/vim-signify'

Plugin 'derekwyatt/vim-scala'

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

" Setting the colorscheme
colorscheme wombat256mod

" Needed for Syntax highlighting and stuff
filetype on
filetype plugin on
syntax enable

" Automagically indenting
set autoindent
set expandtab
set smarttab

" Setting the tab to be spaces rather than tab
" and be 3.
set shiftwidth=3
set softtabstop=3
set backspace=2

" Enabling linenumbers and use of mouse
set number
set mouse=a

" Setting incremental search and highlighting it
set incsearch
set hlsearch

" Setting highlight for current line and the color
set cul
hi CursorLine term=none cterm=none ctermbg=0

" Setting highlight for column in same color as line colorhighlight
set colorcolumn=80 
highlight ColorColumn ctermbg=0

" Matching/highlighting brackets etc.
set showmatch

" Treat long lines as break lines
map j gj
map k gk

let mapleader = ","

" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

ino jj <esc>
cno jj <esc>

set t_Co=256

