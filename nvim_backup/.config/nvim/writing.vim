call plug#begin(stdpath('data') . '/plugged')
    Plug 'lifepillar/vim-solarized8'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'preservim/vim-pencil'
    Plug 'preservim/vim-wordy'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dpelle/vim-LanguageTool'
    Plug 'tpope/vim-surround'
call plug#end()

syntax on
let mapleader=' '
set textwidth=100
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set linebreak
set number
set showmatch
set smartcase
set incsearch
set spell
set showmatch
set confirm
set ruler
set autochdir
set autowriteall
set undolevels=1000
set backspace=indent,eol,start
set wrap

nnoremap vv :update<cr>
inoremap vv <Esc>:update<cr>
nnoremap qq :q<cr>
inoremap jj <Esc>
inoremap uu <C-O>
inoremap aa <C-O>A
nnoremap qq :q<cr>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
inoremap <A-n> <Esc>o
inoremap <A-m> <Esc>O
nnoremap <A-n> o<Esc>
nnoremap <A-m> O<Esc>
nnoremap <leader>t :20Term<cr>
nnoremap <leader>w <C-W>

" Theme
set background=dark
set termguicolors
colorscheme solarized8

" Vim-Pencil
set nocompatible
filetype plugin on       " may already be in your .vimrc
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
let g:pencil#wrapModeDefault = 'soft'
"use gq to format whatever object


" Vim-Airline
let g:airline_theme='solarized'

let g:goyo_height="70%"
let g:goyo_width="80%"

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nmap <Leader>g :Goyo<Enter>
