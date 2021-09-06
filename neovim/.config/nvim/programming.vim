call plug#begin(stdpath('data') . '/plugged')

" Beautiful User Interface
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Powerful Tools
Plug 'haya14busa/is.vim' " IncSearch
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'vimlab/split-term.vim'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
" Languages and file types.
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions=['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-eslint', 'coc-prettier', 'coc-snippets', 'coc-clangd']

call plug#end()

" Custom setting
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
set foldmethod=indent
set clipboard+=unnamedplus
au BufRead * normal zR
set notermguicolors
colorscheme gruvbox

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
nnoremap <leader>t :20Term<cr>
nnoremap <leader>w <C-W>
nnoremap <leader>o <C-O>

" Autopairs Setting
let g:AutoPairsShortcutJump=''
let g:AutoPairsShortcutFastWrap=''

" Emmet.vim settings
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<M-e>'

" Vim-jsx-pretty settings
let g:vim_jsx_pretty_colorful_config=1

" Vim-Airline settings
let g:airline_theme='base16_gruvbox_dark_hard'
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

" CtrlP settings
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers= ['package.json']
set wildignore+=*/node_modules/*

" NERDTree settings
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeIgnore = ['^node_modules$']

" Coc settings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
