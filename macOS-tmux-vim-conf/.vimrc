" messages  --
set report=0

" --- Compatibility & Syntax ---
set nocompatible
syntax on

" --- UI & Appearance ---
set laststatus=2
set wildmenu
set mouse=a
set nowrap
set visualbell


" --- Indentation ---
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" --- Search Settings ---
set hlsearch
set ignorecase
set smartcase

" --- Clipboard ---
set clipboard=unnamed,unnamedplus

" --- Terminal ---
set t_Co=256

" --- Vim-Plug Setup ---
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs' 

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"---
Plug 'tpope/vim-fugitive'

call plug#end()


" defualt VIM fav: darkblue, blue, murphy, slate, sorbet, elflord
" plugged fav: gruvbox, onedark
colorscheme onedark
set termguicolors 
hi Normal guibg=NONE ctermbg=NONE
hi Nontext guibg=NONE ctermbg=NONE
