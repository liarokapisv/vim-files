set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/linux/vimfiles/bundle/Vundle.vim/
call vundle#begin('~/linux/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/colorsupport.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

silent! colorscheme wasabi256

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

syntax on

set number

set backspace=indent,eol,start

let NERDTreeQuitOnOpen=0

set guioptions=
set guifont=Consolas:h13

au GUIEnter * simalt ~x

set path=**

set wildmode=longest,list,full
set wildmenu

autocmd VimEnter * if exists(":NERDTree") | NERDTree | endif

map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

nnoremap <leader>c :silent! !ctags -R . <CR>

set tags+=./ctags/tags
set complete-=i

autocmd VimEnter * if exists(":NERDTree") | silent NERDTree /| wincmd p | endif

set fdm=syntax

autocmd GUIEnter * set vb t_vb=

set errorformat^=%-GIn\ file\ included\ %.%#

command -nargs=* -complete=file Cp Start! cp <f-args>
command -nargs=* -complete=file Rm Start! rm <f-args>
command -nargs=* -complete=file Mkdir Start! mkdir <f-args>

