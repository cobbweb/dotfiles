"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/cobbweb/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/cobbweb/.dein')
  call dein#begin('/Users/cobbweb/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/cobbweb/.dein/repos/github.com/Shougo/dein.vim')

  " UI enhancements
  call dein#add('Shougo/denite.nvim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('ctrlpvim/ctrlp.vim')

  " Styling
  call dein#add('mhartington/oceanic-next')
  
  " Code completion and other helpers
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('tpope/vim-commentary')
  call dein#add('jiangmiao/auto-pairs')

  " Languages
  call dein#add('sheerun/vim-polyglot')
  call dein#add('mhartington/nvim-typescript')
  call dein#add('carlitux/deoplete-ternjs')

  " Required:
  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------

" Settings
filetype plugin indent on
set whichwrap+=<,>,[,]
set colorcolumn=80
set expandtab
set shiftwidth=2
set softtabstop=2

" Mouse
set mouse=a
function SmoothScroll(up)
    if a:up
        let scrollaction="^Y"
    else
        let scrollaction="^E"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=1
        sleep 10m
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

nnoremap <C-U> :call SmoothScroll(1)<Enter>
nnoremap <C-D> :call SmoothScroll(0)<Enter>
inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

" EDITING UI AND HIGHLIGHTING
if (has("termguicolors"))
  set termguicolors
endif

syntax enable
colorscheme OceanicNext
set number
set cursorline
set conceallevel=1

" Code completion settings
let g:deoplete#enable_at_startup=1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
" autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
set autoindent

let g:javascript_conceal_null = "ø"
let g:javascript_conceal_static = "@"
let g:javascript_conceal_this = "@"

" File ignores
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuff

set whichwrap+=<,>,[,]
set colorcolumn=80
set expandtab
set shiftwidth=2
set softtabstop=2
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuffset wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuff
