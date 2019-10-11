set clipboard=unnamedplus "system clipboard
syntax on

if has('unix')
	set shell=/bin/sh "Use a compatible shell 
endif

if (has('win32') || has('win64'))
	set guifont=Consolas:h10.5
	let g:python3_host_prog = 'C:\Users\andre\AppData\Local\Programs\Python\Python37\python.exe'
endif

"###START NEOBUNDLE
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'jaxbot/semantic-highlight.vim'
	NeoBundle 'marciomazza/vim-brogrammer-theme'
	NeoBundle 'vim-airline/vim-airline'
	NeoBundle 'vim-airline/vim-airline-themes'
	NeoBundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	NeoBundle 'Shougo/neco-syntax'
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

" deoplete
let g:deoplete#enable_at_startup = 1

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
"###END NEOBUNDLE

set ttyfast 
set secure
set backspace=indent,eol,start
"set nobackup "No backup
set history=150         " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set autoindent " indenting
set smartindent 
set showmatch
set showcmd 
set cursorline
set tabstop=3
set softtabstop=3
set shiftwidth=3
set noswapfile " No swapfile 
set nowb
set wildmenu 
set modeline
set ls=2 
set number " left-side line counter
set t_Co=256color "Enable 256 colors terminal
set hlsearch "highlight matched 
set autowrite
set shortmess=a
set cmdheight=2
set mouse=a
	if &term =~ '^screen'
		 " tmux knows the extended mouse mode
		 set ttymouse=xterm2
	endif
colorscheme brogrammer 
autocmd FileType text setlocal textwidth=78
autocmd BufEnter * :syntax sync fromstart

"AirlineTheme
let g:airline_theme='base16_paraiso'

"Airline 
let g:airline#extensions#tabline#enabled = 1

"noremap
inoremap jk <esc>
inoremap kj <esc>
nnoremap . :
nnoremap <F2> :set invpaste paste?<CR>
	set pastetoggle=<F2>
	set showmode
nnoremap <F5> :make<CR>


"Various mapping
map <F9> :NERDTreeToggle<CR>
map <C-s> :SemanticHighlight<cr>
map <C-x> :SemanticHighlightRevert<cr>

"### START GHDL & GTKWAVE
if (has('win32') || has('win64'))
	let s:ghdldir = 'C:\Program Files (x86)\Ghdl\bin'
	if (isdirectory(s:ghdldir))
		let $PATH .= ';' . s:ghdldir
	endif
	
	let s:gtkwavedir = 'C:\Program Files\gtkwave64\bin'
	if (isdirectory(s:gtkwavedir))
		let $PATH .= ';' . s:gtkwavedir
	endif
	
	let s:gnumakedir = 'C:\Program Files (x86)\GnuWin32\bin'
	if (isdirectory(s:gnumakedir))
		let $PATH .= ';' . s:gnumakedir
	endif
endif

"### END GHDL & GTKWAVE


