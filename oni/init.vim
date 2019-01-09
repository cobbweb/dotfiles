set nocompatible
filetype off

runtime! ~/.config/oni/autoload/*.vim

call plug#begin("~/.config/oni/plugged")

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

set number
set noswapfile
set smartcase

set splitright
set splitbelow

set noshowmode
set laststatus=0
set mouse=a

" indenting
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

let mapleader="\<DEL>"

autocmd BufWritePost *.re,*.ml silent :!bsrefmt --in-place "%"

" save
nnoremap <leader>s :w<CR>

" close window
nnoremap <leader>w :bd<CR>
nnoremap <leader>W :bd!<CR>

" next/prev ta
nnoremap <leader>l gt
nnoremap <leader>a gT

nnoremap <leader><ESC> :noh<CR>
nnoremap <leader>p :call OniCommand('quickOpen.show')<CR>
