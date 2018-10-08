set nocompatible
set nobackup
set nowritebackup
set noswapfile

"=====================================================
" Vundle settings
"=====================================================
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'              " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
call vundle#end()                       " required
filetype on
filetype plugin on                      " end of Vundle config

" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

" Airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

" Set tab options
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

set t_Co=256
set termencoding=utf-8

" Set some char visble
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nolist
set shortmess+=I
set viminfo^=h

syntax on

" Turn on row numbering
set number
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set hlsearch

" Enable mouse
set mouse=a

" Set key maps
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" Setup and turn off spell check
set spell spelllang=ru_yo,en_us
set nospell

" Syntax hiliting reload
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Text moving
nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>
inoremap <C-j> <Esc>:m .+1<CR>i
inoremap <C-k> <Esc>:m .-2<CR>i
vnoremap <C-j> :m '>+1<CR>gv
vnoremap <C-k> :m '<-2<CR>gv

" Windows resizing
nnoremap <M-Left> <C-W><
nnoremap <M-Up> <C-W>+
nnoremap <M-Right> <C-W>>
nnoremap <M-Down> <C-W>-

" On tabline
set showtabline=2

" On status line
set laststatus=2

" Set colorscheme
colorscheme desert2

" Set ColorColumn options
highlight ColorColumn ctermbg=233 guibg=#2c2d27
let &colorcolumn="16,72,80,".join(range(120,999),",")

" Show syntax
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" KDE Konsole cursor swithing
let &t_SI = "\<Esc>]50;CursorShape=1;BlinkingCursorEnabled=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2;BlinkingCursorEnabled=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0;BlinkingCursorEnabled=0\x7"

"set rulerformat=%-30(%-10(%l,%c%)\ %{&enc},%{&ff}%=%P%)

" Clear grep parameters for full usage
set grepprg=grep
