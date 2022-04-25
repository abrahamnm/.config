let mapleader = ","

" Movement betweeen tabs/buffers
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader><tab> <Plug>AirlineSelectNextTab
nmap <leader><S-tab> <Plug>AirlineSelectPrevTab

" Write to file
noremap <leader>w <cmd>w<cr>
" Close (Delete) buffer
noremap <leader>q <cmd>bd<cr>
" Insert new line in normal mode
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
" Get out of Insert Mode
inoremap ii <Esc>l
" Clear highlights made by last search
nnoremap <leader>c <cmd>noh<cr>
" Navigate between splits
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W
" Move lines Up/Down
nnoremap <C-k> <cmd>move-2<cr>
nnoremap <C-j> <cmd>move+<cr>
xnoremap <C-k> <cmd>move-2<cr>gv
xnoremap <C-j> <cmd>move'>+<cr>gv
" Indent/Unindent lines
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv

" Telescope find features
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-n> <cmd>lua require('telescope').extensions.file_browser.file_browser({ path = "%:p:h" })<cr>
nnoremap <C-m> <cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>
nnoremap <leader>f <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>cc <cmd>lua require('telescope.builtin').git_commits()<cr>
