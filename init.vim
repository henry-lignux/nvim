let g:coc_disable_startup_warning = 1
set nu
set hls
set ic
syntax on

" this command sets space to be the leader key
let mapleader = " "

nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h

" makes navigating windows use space instead of ctrl+w
nnoremap <leader>J <c-w>J
nnoremap <leader>K <c-w>K
nnoremap <leader>L <c-w>L
nnoremap <leader>H <c-w>H

"this command allows you to use 'jk' to escape insert mode
inoremap jk <Esc>

"this command unmaps the escape key in insert mode
inoremap <esc> <nop>

" these commands allow you to move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

set ruler                           " show line and column number
set showcmd             " show (partial) command in status line

nmap <leader>x :CocCommand explorer<CR>

source $HOME/.config/nvim/plug-config/coc.vim

" all of my plugins:
call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
call plug#end()
