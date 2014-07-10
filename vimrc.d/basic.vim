
""""""""""""""""""""""""""""""""""""""""""""""""""
"" common settings
""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype plugin indent on
syntax on

set backup
set number

set autoindent
set autowrite
set autoread
set autochdir		" cscope compatible

set incsearch		" instant search
set hlsearch		" high light search keyword

set scrolloff=7

"" wildmenu settings
set wildmenu		" turn on wild menu
set wildmode=list:longest
set wildignore+=*.o,*~,*.pyc,a.out
set wildignore+=.git,.svn

set ruler		    " always show current position
set cmdheight=2		" command bar height
set backspace=2		" same as set backspace=indent,eol,start
set wrap		    " wrap lines
set linebreak

set foldmethod=marker
set background=dark

set shiftwidth=4
set tabstop=4
set expandtab

set t_Co=256

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab

set history=1000
"set mouse=a		" mouse support
set laststatus=2	" always show the status line
set noshowmatch

"" file encoding
" 
" help encoding-names
" http://linux-wiki.cn/wiki/zh-hans/Vim中文处理
"
" if you use utf-8 as your system locale, you can set 'encoding' to utf-8
"
" set encoding=utf-8

set termencoding=utf-8  " encoding for vim in terminal
" set fileencodings=utf-8,gbk,default,latin1    " use chinese instead of gbk
set fileencodings=utf-8,chinese,default,latin1
set fileencoding=utf-8  " encoding for a new file is utf-8

if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8  " encoding for a new file is utf-8
endif

"" cursorline
set cursorline
"hi CursorLine cterm=bold ctermbg=black ctermfg=white guibg=darkred guifg=white
hi CursorLine cterm=bold ctermbg=0

" restore cursor to file position in previous editing session
" see /etc/vim/vimrc
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
"" key binding
""""""""""""""""""""""""""""""""""""""""""""""""""

"" for tabs
cnoremap <C-N> tabnew<SPACE>
nnoremap <C-N> gt
nnoremap <C-P> gT

"" create ctags
nnoremap <silent> <LEADER>ct<RETURN> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"" execute commands
nnoremap <C-C> :
cnoremap <C-C> !

" include path
set path+=/usr/include
set path+=/usr/local/include
set tags+=/usr/include/tags


