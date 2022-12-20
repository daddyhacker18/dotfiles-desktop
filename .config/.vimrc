" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	   Plug 'Raimondi/delimitMate'	" auto write opening and closing
	   Plug 'mbbill/undotree'	" undo visualise	
	   Plug 'preservim/nerdtree'	" file manager
	   Plug 'godlygeek/tabular'	" auto formatting
	   Plug 'itchyny/lightline.vim'	" highlight lines


call plug#end()

" }}}

set number relativenumber	" display line numbers relative to cursor
set mouse=a		        	" normal mouse
set clipboard=unnamedplus	" normal clipboard
set cursorline			    " show cursor line
set laststatus=2		    " show status bar at bottom
set expandtab			    " use spaces instead of tabs
set smarttab			    " be smart using tabs
set shiftwidth=4		    " one tab = four spaces	
set tabstop=4			    " one tab = four spaces
set ignorecase              " ignore case   
set smartcase               " if starting with a capital, it will be case sensitive

" colour schemes
colorscheme dracula

" highlight CursorLine ctermbg=Grey cterm=bold guibg=#e5e4e2

" key bindings
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" undo
set undodir=~/.vim/undodir
set undofile
let g:undotree_WindowLayout = 2
