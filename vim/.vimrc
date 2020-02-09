" Enable syntax highlights
syntax enable
" set background=dark

" Shorcut to open NERDTree
map <C-e> :NERDTreeFocus<CR>

" Close vim if the only window left open in a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen=1

set number

" For lightline
set laststatus=2

" Save cursor position
augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" YCM standard config file
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
map <C-@> :YcmCompleter FixIt<CR>

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
Plugin 'itchyny/lightline.vim'

" Autocomplete
Plugin 'ycm-core/YouCompleteMe'

" Syntax highlights
Plugin 'tikhomirov/vim-glsl'

call vundle#end()
filetype plugin indent on
