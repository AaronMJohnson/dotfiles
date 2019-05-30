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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
" Autocomplete (npm install -g tern)
Plug 'carlitux/deoplete-ternjs'
" JS Documentation comments
Plug 'heavenshell/vim-jsdoc', { 'on': ['JsDoc'] }
" Color highlighter
Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'less', 'html', 'javascript', 'javascript.jsx'] }
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Buffers tabline
Plug 'ap/vim-buftabline'
" Fuzzy searching/replacing/etc
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

" Lightline config
let g:lightline = {
    \ 'colorscheme' : 'palenight',
    \ }

"Colorscheme
set termguicolors
colorscheme palenight
