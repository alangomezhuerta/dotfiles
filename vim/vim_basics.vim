	":set number relativenumber
	:set nu rnu
	:nnoremap <space><space>n :set nu rnu!<Enter>

	" remaps for an easier splits navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

	" more natural split opening
	" set splitbelow
	" set splitright

	" Press F4 to toggle highlighting on/off, and show current value
	:nnoremap <space><space>s :set hlsearch! hlsearch?<Enter>

	:nnoremap <space><space>c :colorscheme 

	nnoremap <space> :

	:nnoremap <space><space>b :Buffer<Enter>
	:nnoremap <space><space>f :Files<Enter>

	" remap Y to y$ to be consisten with C and D operators
	nnoremap Y y$

	" allow plugins
	filetype plugin on

	" reduce the Esc lag timeout
	set timeout timeoutlen=1000 ttimeoutlen=10


	" To keep your folding
	autocmd BufWinLeave *.* mkview
	autocmd BufWinEnter *.* silent loadview
	"

	" ========
	" vim-plug 
	call plug#begin('~/.vim/plugged')

	" Declare the list of pluggins
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/seoul256.vim'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'w0rp/ale'
	Plug 'tpope/vim-fugitive'
	Plug 'tomasr/molokai'
	Plug 'alangomezhuerta/molokai-dark'
	Plug 'wimstefan/Lightning'
	Plug 'gosukiwi/vim-atom-dark'
	Plug 'wadackel/vim-dogrun'
	Plug 'arcticicestudio/nord-vim'
	Plug 'gregsexton/Atom'
	Plug 'sonph/onehalf'
	Plug 'endel/vim-github-colorscheme'
	Plug 'dempfi/ayu'


" List end here. Plugins become visible after this call.
call plug#end()

" Afteradding plugins , just reload it ( :source ~/.vimrc ) or restart vim
" Now run :PlugInstall  to install plugins

colorscheme nord

