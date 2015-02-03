" Runtime
"""""""""

" Use pathogem
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Settings
""""""""""

" Use line numbers
set number

" Mappings
""""""""""

" Use [J][J] to exit insert mode
imap jj <Esc>
imap jJ <Esc>
imap Jj <Esc>
imap JJ <Esc>

"        [I]
" Use [J][K][L] for movement
map i <Up>
map j <Left>
map k <Down>
map l <Right>

"        [I]
" Use [J][K][L] to switch windows and [H] to enter insert mode
map <C-w>i <C-w><Up>
map <C-w>j <C-w><Left>
map <C-w>k <C-w><Down>
map <C-w>l <C-w><Right>
map h <Ins>

" Plugins
"""""""""

" NERDTree  
"autocmd VimEnter */home/algorhythm/Igneous/mesa/* NERDTree

" Pathogen
execute pathogen#infect()

" Go
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif

" replace $GOROOT with the output of: go env GOROOT
set runtimepath+=$GOROOT/misc/vim

filetype plugin indent on
syntax on

" run "go fmt" on Golang source files when they are saved
autocmd FileType go autocmd BufWritePre <buffer> Fmt

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
