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
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-surround'
Plugin 'showmark2'
call vundle#end()                       " required
filetype on
filetype plugin on                      " end of Vundle config

" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

" Lightline options
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ }
      \ }

"function! MyBufferline()
"  call bufferline#refresh_status()
"  let b = g:bufferline_status_info.before
"  let c = g:bufferline_status_info.current
"  let a = g:bufferline_status_info.after
"  let alen = strlen(a)
"  let blen = strlen(b)
"  let clen = strlen(c)
"  let w = winwidth(0) * 4 / 9
"  if w < alen+blen+clen
"    let whalf = (w - strlen(c)) / 2
"    let aa = alen > whalf && blen > whalf ? a[:whalf] : alen + blen < w - clen || alen < whalf ? a : a[:(w - clen - blen)]
"    let bb = alen > whalf && blen > whalf ? b[-(whalf):] : alen + blen < w - clen || blen < whalf ? b : b[-(w - clen - alen):]
"    return (strlen(bb) < strlen(b) ? '...' : '') . bb . c . aa . (strlen(aa) < strlen(a) ? '...' : '')
"  else
"    return b . c . a
"  endif
"endfunction

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
"highlight ColorColumn ctermbg=233 guibg=#2c2d27
"let &colorcolumn="16,72,80,".join(range(120,999),",")

" Show syntax
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" KDE Konsole cursor swithing
let &t_SI = "\<Esc>]50;CursorShape=1;BlinkingCursorEnabled=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2;BlinkingCursorEnabled=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0;BlinkingCursorEnabled=0\x7"

"set rulerformat=%-30(%-10(%l,%c%)\ %{&enc},%{&ff}%=%P%)

"set hilite row and column switch key
":nnoremap H :set cursorline! cursorcolumn!<CR>

" Clear grep parameters for full usage
set grepprg=grep
