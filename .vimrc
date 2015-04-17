" Required by Vundle (iMproved)
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdtree.git'

Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle 'garbas/vim-snipmate'
Bundle "honza/vim-snippets"

Bundle 'scrooloose/nerdcommenter'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'SearchComplete'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/neocomplcache'
Plugin 'leshill/vim-json'
Plugin 'digitaltoad/vim-jade'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set syntax highlighting on
syntax on

" Set column width for git commit msg
au FileType gitcommit set tw=72

" I want my files to be utf-8 "
set encoding=utf-8

" Reload files modified outside of Vim "
set autoread

" Replace tabs with spaces "
set expandtab
set shiftwidth=2
set softtabstop=2

" If I am in an indented block of code, keep the indentation level when I "
" press enter "
set autoindent

" Show line numbers "
set number

" Highlight all occurrences of a search "
set hlsearch

" Highlight column 81 to help keep lines of code 80 characters or less "
set colorcolumn=81

set backspace=indent,eol,start " backspace over everything in insert mode

" Allows normal mode to autocomplete paths using tab like bash does "
set wildmenu
set wildmode=list:longest

" When choosing a file from a quickfix buffer, open in a new tab or in "
" an already opened tab "
set switchbuf+=usetab,newtab

" Shift+Tab unindents a line "
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" Allow the use of 256 colors in the terminal "
set t_Co=256

" Remove trailing spaces when saving a file "
autocmd BufWritePre * :%s/\s\+$//e

colorscheme molokai

" Turn on auto-complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

filetype indent plugin on
