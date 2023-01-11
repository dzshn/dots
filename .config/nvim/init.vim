" (partially) stolen from Vendicated/fotdiles

let g:ale_disable_lsp = 1

call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }  " :3
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sleuth'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
let g:coc_global_extensions = [
    \ 'coc-eslint',
    \ 'coc-json',
    \ 'coc-prettier',
    \ 'coc-pyright',
    \ 'coc-sh',
    \ 'coc-spell-checker',
    \ 'coc-snippets',
    \ 'coc-svelte',
    \ 'coc-tsserver',
    \ 'coc-vimlsp',
    \ 'coc-yaml',
\ ]

Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-commentary'

" Plug 'junegunn/fzf'  " arch's fzf already has this
Plug 'junegunn/fzf.vim'
Plug 'kdheepak/lazygit.nvim'

Plug 'andweeb/presence.nvim'

Plug 'tpope/vim-afterimage'
call plug#end()

colorscheme catppuccin-mocha
let g:airline_theme = 'catppuccin'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_spell = 0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' ln '
let g:airline_symbols.colnr = ' : '
let g:airline_symbols.branch = ''
let g:airline_symbols.notexists = '*'

let NERDTreeMinimalUI = 1

let g:vim_svelte_plugin_use_typescript = 1

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'python': ['autoflake', 'autoimport', 'black', 'isort'],
\ }

let g:ale_linters = {
\   'python': ['flake8', 'mypy']
\ }

set signcolumn=yes number relativenumber wrap noshowmode

set splitbelow splitright
set mouse=a
set clipboard=unnamedplus
set foldmethod=syntax
set foldlevel=99

set ignorecase smartcase

let mapleader = ","

nnoremap <leader>gg :LazyGit<CR>

nnoremap <leader>nn :NERDTreeVCS<CR>
nnoremap <leader>nc :NERDTreeClose<CR>

" Fold/unfold code
nnoremap <space> za

" Completion menu binds
"   <c-space> to trigger
"   <Tab> to cycle forwards
"   <S-Tab> to cycle backwards
"   <cr> to use completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

command -nargs=0 Rename :call CocActionAsync("rename")

" Open new files
noremap <C-n> :execute("FZF")<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

augroup nvim_term
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber signcolumn=no
augroup END
