set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
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


" Set color bell
set colorcolumn=81
" Number line
" set number
" turn hybrid line numbers on
set number relativenumber
set nu rnu
" Allows to have hidden buffer by default
set hidden

set history=100

" Highlight the search
set hlsearch

filetype on
filetype plugin on
filetype indent on


set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Disable autoincrement number
map <C-a> <Nop>



" Trailing spaces
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
match Error /\s\+$/


" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

colorscheme gruvbox

" set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'

" F12 to toggle show number of line
:nmap <F12> :set invnumber invrelativenumber<CR>

set tw=80
set fo+=t
set fo-=l

set wildmode=longest,list,full
set wildmenu

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
"
"To enable fuzzyfinder in vim
set rtp+=~/.fzf
