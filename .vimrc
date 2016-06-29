set t_Co=256
set bg=dark
colorscheme desert256
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
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()            		" required
filetype on
filetype plugin on
filetype plugin indent on

"Vundle section end 
"starting page
let g:startify_bookmarks = ['~/.vimrc',]
let g:startify_custom_header = map(split(system('fortune ~/.vim/fortune/vimtips | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']
let g:startify_session_persistence = 1
"end of starting page

syntax on
set tabstop=4 "display all occurrences of Tab character (ASCII #9) as 4 spaces. This option will not change the text, it will only change the displaying of the text.
set autoindent "automatically position the cursor with appropriate indentation level when you press Enter and want to write the next line of code
set shiftwidth=4 "control the width of the indentation level when you select a block of code and change it’s indentation level
set wrap
set number "if you want to see all lines numbered

"==== settings from habrahabr
set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
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
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

"NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

" TaskList настройки
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

" Работа буфферами
map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер

"==== setting from habrahabr
