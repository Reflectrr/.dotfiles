call plug#begin(stdpath('data') . '/plugged')
" Beautiful User Interface
Plug 'lifepillar/vim-solarized8'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Powerful Tools
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'preservim/vim-pencil'
Plug 'haya14busa/is.vim' " IncSearch
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
" Languages and file types.
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions=['coc-prettier', 'coc-snippets']

call plug#end()

syntax on
set number
set relativenumber
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set splitright
set splitbelow
set hls
set ignorecase
set smartcase
set linebreak
set autochdir
set wrap
set foldmethod=indent
set clipboard+=unnamedplus
au BufRead * normal zR
set background=dark
set termguicolors
colorscheme solarized8

" Custom mapping
let mapleader=' '
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
nnoremap <leader>w <C-W>

" Autopairs Setting
let g:AutoPairsShortcutJump=''
let g:AutoPairsShortcutFastWrap=''

" Vim-Airline settings
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" NERDTree settings
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" Coc settings
let b:coc_suggest_disable=1
inoremap <silent><expr> <TAB>
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ pumvisible() ? coc#_select_confirm() :
      \ "\<TAB>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" VimTex settings
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let maplocalleader = " "
"let g:vimtex_quickfix_open_on_warning=0

" Vim-Pencil settings
set nocompatible
filetype plugin on       " may already be in your .vimrc
augroup pencil
  autocmd!
  autocmd FileType latex,tex call pencil#init()
augroup END
let g:pencil#wrapModeDefault = 'soft'

" Goyo
let g:goyo_height="70%"
let g:goyo_width="80%"
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nmap <Leader>g :Goyo<Enter>
