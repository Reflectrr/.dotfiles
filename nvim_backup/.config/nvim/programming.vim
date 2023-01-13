call plug#begin(stdpath('data') . '/plugged')

" Beautiful User Interface
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
" Powerful Tools
Plug 'jiangmiao/auto-pairs'
Plug 'haya14busa/is.vim' " IncSearch
Plug 'preservim/nerdtree'
Plug 'APZelos/blamer.nvim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'vimlab/split-term.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-obsession'
" Languages and file types.
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'ianding1/leetcode.vim'
let g:coc_global_extensions=['coc-json', 'coc-tsserver', 'coc-pyright', 'coc-emmet', 'coc-eslint', 'coc-prettier', 'coc-snippets', 'coc-clangd', 'coc-rust-analyzer', 'coc-tailwindcss']

call plug#end()

" Custom setting
syntax on
set hidden
set number
set relativenumber
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set splitright
set splitbelow
"set hls
set ignorecase
set smartcase
set foldmethod=indent
set clipboard+=unnamedplus
au BufRead * normal zR
set termguicolors 
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
nnoremap <leader>bn :bn<CR> 
nnoremap <leader>bb :bp<CR>
nnoremap <leader>bd :bd<CR>

" Gruvbox settings
set background=dark
let g:gruvbox_contrast_dark="soft"

" Autopairs Setting
let g:AutoPairsShortcutJump=''
let g:AutoPairsShortcutFastWrap=''

" Emmet.vim settings
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_expandabbr_key='<C-e>'

" Vim-jsx-pretty settings
let g:vim_jsx_pretty_colorful_config=1

" Vim-Airline settings
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
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
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeMinimalMenu=1

" Coc settings
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm():
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
hi CocMenuSel guibg=#13354A

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Remap for format selected region
xmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" fzf settings
" inoremap <expr> <leader>p fzf#vim#complete#path('rg --files')
nnoremap <silent> <leader>s :Rg<CR>
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" leetcode.vim settings
let g:leetcode_solution_filetype='python3'
let g:leetcode_browser='chrome'
let g:leetcode_hide_topics=1
let g:leetcode_hide_companies=1
let g:leetcode_problemset='favorite_lists/top-interview-questions'
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>

" vim-clang-format settings
"nmap == :ClangFormat<CR>
