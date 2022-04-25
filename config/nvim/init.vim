" Plugin Managmement
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Use vim-airline for status bar
Plug 'vim-airline/vim-airline'
" Use vim-airline themes
Plug 'vim-airline/vim-airline-themes'
" Use gitgutter for git information on editor
Plug 'airblade/vim-gitgutter'
" Git inside vim
Plug 'tpope/vim-fugitive'
" Lua Functions (Required for Telescope)
Plug 'nvim-lua/plenary.nvim'
" Harpoon (?)
Plug 'ThePrimeagen/harpoon'
" Telescope FuzzyFinder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
" Move arround quickly
Plug 'easymotion/vim-easymotion'
" WakaTime
Plug 'wakatime/vim-wakatime'
" Change Surrounding
Plug 'tpope/vim-surround'
" Comment Lines
Plug 'tomtom/tcomment_vim'
" Rainbow Parentheses
Plug 'luochen1990/rainbow'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" Indent lines
Plug 'Yggdroot/indentLine'
" Material theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Native LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" Syntax Hightlightning
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Code completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'

call plug#end()

" Open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Remove trailing spaces on write
autocmd BufWritePre * %s/\s\+$//e

" Move to last known cursor position when opens
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \	exe "normal! g`\"" |
      \ endif

" Add indentation guide lines and make them barely visible
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_gui = '#28353B'
" Enable Powerline fonts in Airline
let g:airline_powerline_fonts = 1
" Enable buffer line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Disable encode show
let g:airline_section_y = ''
let g:airline#extensions#branch#format = 2 " Transform feature/new_feature to f/new_feature
let g:airline_skip_empty_sections = 1
let g:airline_theme = 'hybrid'
  let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'c'  : 'C',
    \ 'i'  : 'I',
    \ 'ic' : 'I',
    \ 'ix' : 'I',
    \ 'n'  : 'N',
    \ 'ni' : 'N',
    \ 'no' : 'N',
    \ 'R'  : 'R',
    \ 'Rv' : 'R',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ 't'  : 'T',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ }
" Add Airline tabnumbers and keymaps
let g:airline#extensions#tabline#buffer_idx_mode = 1
