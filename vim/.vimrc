" Vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/cscope_macros.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shougo/neocomplcache'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/matrix.vim--Yang'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'nvie/vim-flake8'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

" MacVIM
if system("uname -s") == "Darwin\n"
    set guifont=Monaco:h13
endif

syntax on
set nocompatible
set encoding=utf-8
set fileencoding=chinese
set fileencodings=utf-8,chinese
set fileformats=unix,dos
set ambiwidth=double
set number
set autoread    "Read file when changed outside
set smartindent
set autoindent

set mouse=a
set mousehide " Hide the mouse cursor while typing
set backspace=indent,eol,start

set term=xterm-256color
set t_ut=       " Fixing Vim's Background Color

set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
" colorscheme desert
color solarized

set showcmd
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set wildmode=longest,list,full " Tab completion for filenames
set wildmenu

set scrolloff=4 " Keep 4 lines off the edges of the screen when scrolling

" Vim sudo
cmap w!! w !sudo tee %

" Tab stuff
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set autoindent


"----------------------------------------------
" Search
set hlsearch    " Highlight search term
nnoremap <CR> :nohlsearch<CR><CR> " click Enter to cancel highlight
set ignorecase  " Do case insensitive matching
set smartcase   " No ignorecase when pattern has uppercase
set incsearch   " Highlight match while typing search pattern

" Yank from the cursor to the end of the line
nnoremap Y y$

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

"----------------------------------------------
" Status line
if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set laststatus=2
    set statusline=%<%f\ " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=\ [%{&ff}/%Y] " Filetype
    set statusline+=\ [%{getcwd()}] " Current dir
    set statusline+=\ [%{fugitive#statusline()}] " git indicator
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

