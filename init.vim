"Begin of vim config file

set shell=/bin/sh "Use a compatible shell 
set nocompatible "Not compatible with Vi settings
set clipboard=unnamedplus "system clipboard
filetype plugin indent on
"##NEOBUNDLE START##

"vim compatibility
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
"
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Tagbar'
NeoBundle 'jaxbot/semantic-highlight.vim'
NeoBundle 'marciomazza/vim-brogrammer-theme'
"Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

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
"set antialias 
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

colorscheme brogrammer 
autocmd FileType text setlocal textwidth=78

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

"Python imports
let g:PythonAutoAddImports = 1

"include paths
let &path.="/usr/include,/usr/local/include"

"YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger = 1

"Syntastic 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': [] }

"vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_play_open_browser = 0

"CtrlP
let g:ctrlp_map = '<c-p>'

"Airline 
let g:airline#extensions#tabline#enabled = 1

"UltiSnips 
let g:UltiSnipsExpandTrigger = "<F8>"
let g:UltiSnipsJumpForwardTrigger = "<C-f>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"

"Enable deoplete
let g:deoplete#enable_at_startup = 1

"Various mapping
map <F9> :NERDTreeToggle<CR>
map <F7> :set invnumber<CR> "hide line number
map <F8> :TagbarToggle<CR>
map <C-s> :SemanticHighlight<cr>
map <C-x> :SemanticHighlightRevert<cr>

"Various commands
command W w !sudo tee % > /dev/null

" C / C++ compiling flags (if needed)
let g:C_CCompiler = "gcc"
let g:C_CFlags = "-O2 -pipe -Wall"
let g:CplusCompiler = "g++"
let g:C_CplusFlags = "-O2 -pipe -Wall"



