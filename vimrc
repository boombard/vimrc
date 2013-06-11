" Automatic Reloading of vimrc
autocmd! bufwritepost .vimrc source %

" Initiate pathogen
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

" Some python standards
set number
set ts=4 sw=4 sta et sts=4 ai
set pastetoggle=<F2>
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:pyflakes_use_quikfix = 0

" Key mapping
let mapleader = ","
let g:pyflakes_use_quickfix = 0
map <leader>n : NERDTreeToggle<CR>
" Easier moving between windows
map <c-l> <c-w>l
map <c-k> <c-w>k
map <c-j> <c-w>j
map <c-h> <c-w>h
" Easier moving between tabs
map <Leader>. <esc>:tabnext<CR>
map <Leader>m <esc>:tabprevious<CR>
" Execute python code
map <Leader>r :!python %<CR>

" Global preferences
syntax on
filetype on
filetype plugin on
if has("gui_running")
  highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif

" Code folding - needs work
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
nnoremap <space> zf

" Colourscheme preferences
set background=dark
se t_Co=16 
colorscheme solarized
