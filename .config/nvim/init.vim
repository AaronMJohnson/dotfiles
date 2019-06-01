"  Author : Aaron M Johnson <johnsonaqw2@gmail.com>                             
"  Neovim Configuration for Web Development                                  
"  Neovimmer since : May 13 2019                                              

" Autoinstall {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup plug_install
    autocmd VimEnter * PlugInstall
  augroup END
endif
" }}}

call plug#begin('~/.config/nvim/plugged')
" Autocomplete
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'} 
" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle']  } 
" Syntax bundle
Plug 'sheerun/vim-polyglot'
" Automatic closing pairs 
Plug 'cohama/lexima.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
" Commenting support (gc)
Plug 'tpope/vim-commentary'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
" JS Documentation comments
Plug 'heavenshell/vim-jsdoc', { 'on': ['JsDoc'] }
" Color highlighter
Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'less', 'html', 'javascript', 'javascript.jsx'] }
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Buffers tabline
Plug 'ap/vim-buftabline'
" Fuzzy searching/replacing/etc
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'
" Git swiss-army knife
Plug 'tpope/vim-fugitive'
" Git changes shown on line numbers
Plug 'airblade/vim-gitgutter'
" Palenight
Plug 'drewtempelmeyer/palenight.vim'
" Surround (cs"')
Plug 'tpope/vim-surround'
call plug#end()

" General
set encoding=utf-8
set fileencoding=utf-8
set number
set relativenumber
set showcmd
set showmode
set cursorline
set hidden

" Performance
set lazyredraw
set ttyfast
set synmaxcol=512

" NERDTree 
let NERDTreeShowHidden=1 
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" fzf
nnoremap <C-P> :Files<CR>


" Lightline config
let g:lightline = {
    \ 'colorscheme' : 'palenight',
    \ }

"Colorscheme
set termguicolors
colorscheme palenight
