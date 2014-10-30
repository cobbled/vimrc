" ack.vim               | https://github.com/mileszs/ack.vim
" BufExplorer           | https://github.com/jlanzarotta/bufexplorer
" clang_complete        | https://github.com/Rip-Rip/clang_complete
" color sample pack     | https://github.com/vim-scripts/Colour-Sampler-Pack
" ctrlp.vim             | https://github.com/kien/ctrlp.vim
" delimitMate           | https://github.com/Raimondi/delimitMate
" drawit                | https://github.com/vim-scripts/DrawIt
" neocomplete           | https://github.com/Shougo/neocomplete.vim
" nerdtree              | https://github.com/scrooloose/nerdtree
" syntastic             | https://github.com/scrooloose/syntastic
" tabular               | https://github.com/godlygeek/tabular
" tagbar                | https://github.com/majutsushi/tagbar
" unisnips              | https://github.com/SirVer/ultisnips
" vim-airline           | https://github.com/bling/vim-airline
" vim-coffee-script     | https://github.com/kchmck/vim-coffee-script
" vim-colors-solarized  | https://github.com/altercation/vim-colors-solarized
" vim-easymotion        | https://github.com/Lokaltog/vim-easymotion
" vim-fugitive          | https://github.com/tpope/vim-fugitive
" vim-javascript        | https://github.com/pangloss/vim-javascript
" vim-node              | https://github.com/moll/vim-node
" vim-snippets          | https://github.com/honza/vim-snippets
" vim-surround          | https://github.com/tpope/vim-surround
" vimproc.vim           | https://github.com/Shougo/vimproc.vim





"" Download latest vim builds at
" http://koji.fedoraproject.org/koji/buildinfo?buildID=519487

"" load pathogen before syntax on, I don't know why
call pathogen#infect()
"call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""""""""""""""
"" plugin setting
""""""""""""""""""""""""""""""""""""""""""""""""""
let s:home = expand('~')
let s:vimrcs = s:home . '/.vim/vimrc.d/'
let s:bundle = s:home . '/.vim/bundle/'

execute 'source 's:vimrcs . 'basic.vim'

execute 'source 's:vimrcs . 'bufexplorer.vim'
execute 'source 's:vimrcs . 'tagbar.vim'
execute 'source 's:vimrcs . 'ultisnips.vim'
execute 'source 's:vimrcs . 'gtags.vim'
execute 'source 's:vimrcs . 'delimitmate.vim'

if isdirectory(s:bundle . 'neocomplete.vim')
    execute 'source 's:vimrcs . 'neocomplete.vim'
elseif isdirectory(s:bundle . 'YouCompleteMe')
    " TODO youcompleteme.vim
    " execute 'source 's:vimrcs . 'youcompleteme.vim'
elseif isdirectory(bundle . 'neocomplcache.vim')
    execute 'source 's:vimrcs . 'neocomplcache.vim'
endif

