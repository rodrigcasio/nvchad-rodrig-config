call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
call plug#end()

syntax on
" set number
" set relativenumber
set mouse=a
set termguicolors

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set splitbelow
set splitright

colorscheme darkblue

let mapleader = " "

nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>ff :Files<CR>

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
