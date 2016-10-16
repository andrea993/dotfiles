"Begin of vim config file

set shell=/bin/sh "Use a compatible shell 
set clipboard=unnamedplus "system clipboard
syntax on


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
	NeoBundle 'majutsushi/tagbar'
	NeoBundle 'Valloric/YouCompleteMe', {'rev': 'fix-vim-eval-returning-py2-str'}
	NeoBundle 'jaxbot/semantic-highlight.vim'
	NeoBundle 'marciomazza/vim-brogrammer-theme'
	NeoBundle 'vim-airline/vim-airline'
	NeoBundle 'vim-airline/vim-airline-themes'
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
"###END NEOBUNDLE

set ttyfast 
set secure
set backspace=indent,eol,start
set nobackup "No backup
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
colorscheme brogrammer 
autocmd FileType text setlocal textwidth=78
autocmd BufEnter * :syntax sync fromstart


"Language interpreter/compiler execution
autocmd FileType python map pyr :!/usr/bin/env python %
autocmd FileType ruby map rbr :!/usr/bin/ruby %
autocmd FileType sh map shr :!/bin/sh %

"Language-specific options
autocmd FileType c map <F5> :make 
autocmd FileType cpp map <F5> :make 
autocmd FileType c map <C-h> :A<cr>

"Make command 
set makeprg=/usr/bin/make\ -j\ 3

"include paths
let &path.="/usr/include,/usr/local/include"

"YCM
let g:ycm_global_ycm_extra_conf = "$HOME/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_seed_identifiers_with_syntax=1

" C / C++ compiling flags (if needed)
let g:C_CCompiler = "gcc"
let g:C_CFlags = "-O2 -pipe -Wall"
let g:CplusCompiler = "g++"
let g:C_CplusFlags = "-O2 -pipe -Wall"

"AirlineTheme
let g:airline_theme='base16_paraiso'

"CtrlP
let g:ctrlp_map = '<c-p>'

"Airline 
let g:airline#extensions#tabline#enabled = 1

"noremap
inoremap jk <esc>
inoremap kj <esc>
nnoremap . :
nnoremap <F2> :set invpaste paste?<CR>
	set pastetoggle=<F2>
	set showmode


"Various mapping
map <F8> :TagbarToggle<CR>
map <F9> :NERDTreeToggle<CR>
map <C-s> :SemanticHighlight<cr>
map <C-x> :SemanticHighlightRevert<cr>

"Various commands
command W w !sudo tee % > /dev/null

" C / C++ compiling flags (if needed)
let g:C_CCompiler = "gcc"
let g:C_CFlags = "-O2 -pipe -Wall"
let g:CplusCompiler = "g++"
let g:C_CplusFlags = "-O2 -pipe -Wall"



