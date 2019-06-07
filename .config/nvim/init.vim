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
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle']  } 
" Syntax bundle
Plug 'sheerun/vim-polyglot'
" Automatic closing pairs 
Plug 'cohama/lexima.vim'
" Commenting support (gc)
Plug 'tpope/vim-commentary'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Indent guides
Plug 'nathanaelkane/vim-indent-guides'
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
" Devicons
Plug 'ryanoasis/vim-devicons'
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
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" Performance
set lazyredraw
set ttyfast

" Leader Space
let mapleader="\<Space>"

" Buffer Switching
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>k :bn<CR>
nnoremap <leader>j :bp<CR>

" NERDTree 
let NERDTreeShowHidden=1 
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" fzf
nnoremap <C-P> :Files<CR>

" Indent leader<ig>
let g:indent_guides_guide_size = 1

" Lightline config
let g:lightline = {
            \ 'colorscheme' : 'palenight',
            \ }

" Coc
" Use <tab> and <S-tab> for navigation and <enter> for completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"Coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>p :Prettier<CR>

" Colorscheme
set termguicolors
colorscheme palenight
