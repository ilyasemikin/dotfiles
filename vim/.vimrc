" Enable syntax highlights
syntax enable
" set background=dark

" Shorcut to open NERDTree
map <C-e> :NERDTreeFocus<CR>

" Close vim if the only window left open in a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen=1

set number

" Save cursor position
augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Vundle block
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-nerdtree/nerdtree'

" Autocomplete
Plugin 'xavierd/clang_complete'

" Syntax highlights
Plugin 'tikhomirov/vim-glsl'

call vundle#end()
filetype plugin indent on
