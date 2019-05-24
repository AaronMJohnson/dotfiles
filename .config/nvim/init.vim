" ###################################################################################
" ### Author: Aaron M Johnson <johnsonaqw2@gmail.com>                             ###
" ###################################################################################
" ### Neovim Configuration for Web Development                                    ###
" ### Neovimmer since : May 13 2019                                               ###
" ###################################################################################

" ===================================================================================
" 1.0 Plugin manager (Plug) settings
" ===================================================================================
"{{{

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

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" -----------------------------------------------------------------------------------
"  Language Agnostic {{{
" -----------------------------------------------------------------------------------
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Automatic closing pairs 
Plug 'cohama/lexima.vim'
"}}}

" -----------------------------------------------------------------------------------
"  " JS (ES6, React) {{{
" -----------------------------------------------------------------------------------

" Modern JS support (indent, syntax, etc)
Plug 'pangloss/vim-javascript'
" JSX syntax
Plug 'mxw/vim-jsx'
" Typescript syntax
Plug 'leafgarland/typescript-vim'
" JSON syntax
Plug 'sheerun/vim-json'
" Autocomplete (npm install -g tern)
Plug 'carlitux/deoplete-ternjs'
" JS Documentation comments
Plug 'heavenshell/vim-jsdoc', { 'on': ['JsDoc'] }
"}}}

" -----------------------------------------------------------------------------------
" HTML/CSS {{{
" -----------------------------------------------------------------------------------

" HTML5 syntax
Plug 'othree/html5.vim'
" SCSS syntax
Plug 'cakebaker/scss-syntax.vim'
" Color highlighter
Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'less', 'html', 'javascript', 'javascript.jsx'] }
"}}}

" -----------------------------------------------------------------------------------
" 
" -----------------------------------------------------------------------------------
call plug#end()
"}}}
