"set t_Co=256
set bg=dark
"colorscheme desert256
colorscheme desertEx
"let g:solarized_termcolors=256
"Vundle section start

set nocompatible              " be iMproved, required
filetype off                  " required


"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

"------=== Start screen ===----------
Plugin 'mhinz/vim-startify'

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'          	" Class/module browser
Plugin 'ctrlpvim/ctrlp.vim'

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo

"---=== Perl specific plugins ===---
Plugin 'vim-perl/vim-perl'

"---------------=== Languages support ===-------------
call vundle#end()            		" required
filetype on
filetype plugin on
filetype plugin indent on

"Vundle section end 
"starting page
let g:startify_bookmarks = ['~/.vimrc',]
let g:startify_custom_header = map(split(system('fortune ~/.vim/fortune/vimtips | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
"end of starting page

syntax on
set tabstop=4 "display all occurrences of Tab character (ASCII #9) as 4 spaces. This option will not change the text, it will only change the displaying of the text.
set autoindent "automatically position the cursor with appropriate indentation level when you press Enter and want to write the next line of code
set shiftwidth=4 "control the width of the indentation level when you select a block of code and change it’s indentation level
set wrap
set number "if you want to see all lines numbered

"==== settings from habrahabr
set backspace=indent,eol,start
let no_buffers_menu=1
set mousemodel=popup

set ruler
set completeopt-=preview
set gcr=a:blinkon0
set ttyfast

tab sball
set switchbuf=useopen

"отключаем пищалку и мигание
set visualbell t_vb= 
set novisualbell       

set enc=utf-8     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch     " инкреминтируемый поиск
set hlsearch     " подсветка результатов поиска
set scrolloff=5     " 	5 строк при скролле за раз

" указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"
"
" настройки Vim-Airline
set laststatus=2
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_detect_modified=1

" TagBar настройки
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

"NerdTree настройки
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\.swp$', '\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  


" === Keybindings ===
map <F3> :TagbarToggle<CR>
map <F2> :NERDTreeToggle<CR>

" Работа буфферами
map <C-x> :bd<CR> 	   
map <M-x> :bd<CR> 	   

nmap SQ <ESC>:mksession! ~/.vim/sessions/Session.vim<CR>:wqa<CR>
nmap SS <ESC>:mksession! ~/.vim/sessions/Session.vim<CR>
nmap SL <ESC>:source ~/.vim/sessions/Session.vim<CR>
nmap CS <ESC>:nohl<CR> 
nnoremap <silent> <C-S-Up> <ESC>:resize -2<CR>
nnoremap <silent> <C-S-Down> <ESC>:resize +2<CR>

set cursorline
hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE


autocmd BufNewFile,BufRead *.inc  set syntax=htmlcheetah
autocmd BufNewFile,BufRead *.tmpl  set syntax=htmlcheetah
