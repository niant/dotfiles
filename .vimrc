" Required by Vundle (iMproved)
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
" Plugin 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdtree.git'

Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle 'garbas/vim-snipmate'
Bundle "honza/vim-snippets"

Bundle 'scrooloose/nerdcommenter'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'SearchComplete'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/neocomplcache'
Plugin 'leshill/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'jdkanani/vim-material-theme'
Plugin 'sheerun/vim-polyglot'
Plugin 'trevordmiller/nova-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'brooth/far.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'prettier/vim-prettier'
Plugin 'janko-m/vim-test'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

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

" Faster terminal
set ttyfast

" If I am in an indented block of code, keep the indentation level when I "
" press enter "
set autoindent

" Show line numbers "
set number
set rnu

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
" set t_Co=256

" Show matching brackets/parenthesis
set showmatch

" Remove trailing spaces when saving a file "
autocmd BufWritePre * :%s/\s\+$//e

" Make editing crontabs possible (disable backup and make in-place editing)
autocmd FileType crontab setlocal nowritebackup

" let g:solarized_termcolors=256
" let base16colorspace=256
set background=dark
" colorscheme base16-solarized
colorscheme palenight

" Turn on auto-complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enable vim airline on single files
set laststatus=2

filetype indent plugin on

" NERD tree tabs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
"map  <C-n> :tabnew<CR>

nnoremap <esc><esc> :noh<CR>

" leader key
let mapleader = ','

" Put backup and swap files away from working directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" ctrlp: ignore bower and node files
let g:ctrlp_custom_ignore = '\v[\/](bower_components|node_modules)$'

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Move blocks
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Buffer keybinds for fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" let macvim_skip_colorscheme=1

" https://github.com/tmux/tmux/issues/1246
" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Fix performance issue on far.vim
set lazyredraw
set regexpengine=1
