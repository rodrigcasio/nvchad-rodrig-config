" -- Messages
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

" command to add pluggins within ./vim/autoload
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 
" then ad the name of the pluggins within the (Vim-Plug Setup) begin and end
" and finally :PlugInstall

" --- Vim-Plug Setup ---
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

"colorschemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'

"---
Plug 'tpope/vim-fugitive'

call plug#end()

" this settings makes transparent background
"fav Basic: darkblue, blue, murphy, slate, sorbet, elford, quiet, ron
"fav Pluged: gruvbox, onedark
colorscheme onedark 
set termguicolors 
hi Normal guibg=NONE ctermbg=NONE
hi Nontext guibg=NONE ctermbg=NONE
