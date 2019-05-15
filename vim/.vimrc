if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =========================================================
"                         PLUGINS
" =========================================================
call plug#begin('~/.vim/plugged')

" HTML syntax
Plug 'othree/html5.vim'

" CSS and Stylus syntax
Plug 'JulesWang/css.vim'
Plug 'iloginow/vim-stylus'

" Javascript syntax
Plug 'https://github.com/pangloss/vim-javascript.git'

" NERDTree
Plug 'https://github.com/scrooloose/nerdtree.git'

" NERDTree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" Use vim-airline for status bar
Plug 'vim-airline/vim-airline'

" Use gitgutter for git information on editor
Plug 'airblade/vim-gitgutter'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Vim material monokai theme
Plug 'https://github.com/AwkwardKore/vim-material-monokai.git'

" Change surrounding
Plug 'tpope/vim-surround'

" Vue syntax
Plug 'posva/vim-vue'

call plug#end()

" =========================================================
"                     GENERAL SETTINGS
" =========================================================

" Set encoding to utf-8
set encoding=utf-8

" Change autoindentation to use spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Use 4 tab spaces when using .php extension
au FileType php set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Add line numbers
set number

" Display line on current line
set cursorline

" =========================================================
"                       NERDTREE
" =========================================================

" Load NERDTree on startup
autocmd vimenter * NERDTree %:p:h
autocmd VimEnter * wincmd p

" Show hidden files on NERDTree
let NERDTreeShowHidden=1

" Hide specific files on NERDTree
let NERDTreeIgnore=['\.DS_Store$', '\.swp$', '\.git$']

" Enable line numbers on NERDTree
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Hide 'Press ? for help' on NERDTree
let NERDTreeMinimalUI=1

" Change NERDTree size
let NERDTreeWinSize=35

" Map Ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Display 'NERDTree' on NERDTree status line instead of root path
let g:NERDTreeStatusline='NERDTree'
"=========================================================
"                         THEME
" =========================================================

" Configure theme to use material-monokai
set background=dark
set termguicolors
colorscheme material-monokai
