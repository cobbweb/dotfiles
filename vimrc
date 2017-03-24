call plug#begin('~/.vim/autoload/plug')

" Base16 colorscheme
Plug 'chriskempson/base16-vim'

" Atom one colorschemes
Plug 'rakr/vim-one'

" File Tree
Plug 'scrooloose/nerdtree'

" Git inside NERDtree
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'valloric/youcompleteme', {'do': './install.py --tern-completer'}

" Handy language pack that covers most languages
Plug 'sheerun/vim-polyglot'

" Auto-inserts matching delimter (e.g. closing paren, curly brace)
Plug 'Raimondi/delimitMate'

" Handy status/info bar along bottom
Plug 'bling/vim-airline'

" GitGutter
Plug 'airblade/vim-gitgutter'

" Run git commands from vim
Plug 'tpope/vim-fugitive'

" Sublime Text's cmd+t
Plug 'ctrlpvim/ctrlp.vim'

" Toggle code comments
Plug 'tpope/vim-commentary'

" TypeScript goodness
" Plug 'Quramy/tsuquyomi', {'do' : 'make -f make_mac.mak'}
Plug 'Shougo/vimproc.vim', {'do' : 'make'}



call plug#end()

if has("gui_macvim")
  set guifont=Fira\ Code\ Medium:h14
  set macligatures
endif

set mouse=a
set whichwrap+=<,>,[,]
set colorcolumn=80
set expandtab
set shiftwidth=2
set softtabstop=2
set ai
set backspace=indent,eol,start
let base16colorspace=256
set t_Co=256
set encoding=utf-8
filetype plugin indent on
set number
set title
set cursorline
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuff
syntax on
colorscheme one
set background=light
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set conceallevel=1
set autoindent

" Faux-'Tabs'
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

nmap <leader>k :NERDTreeToggle<CR>

nmap <leader>p :CtrlPMixed<cr>

let g:delimitMate_expand_cr=1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'


" let g:javascript_conceal_function             = "λ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_static               = "@"
let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"

