":set number relativenumber
:set nu rnu
:nnoremap <F5> :set nu rnu!

" remaps for an easier splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split opening
set splitbelow
set splitright

" Press F4 to toggle highlighting on/off, and show current value
:nnoremap <F4> :set hlsearch! hlsearch?

" Additional mappings to Esc
imap <C-\> <Esc>

"inoremap jk <Esc>
"inoremap kj <Esc>

" Additional mappings to : from normal mode
" nnoremap : <space>
nnoremap <space> :
nnoremap \ :



" remap Y to y$ to be consisten with C and D operators
nnoremap Y y$

" allow plugins
filetype plugin on

" reduce the Esc lag timeout
set timeout timeoutlen=1000 ttimeoutlen=10



