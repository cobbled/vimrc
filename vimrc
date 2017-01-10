" BufExplorer           | https://github.com/jlanzarotta/bufexplorer
" clang_complete        | https://github.com/Rip-Rip/clang_complete
" color sample pack     | https://github.com/vim-scripts/Colour-Sampler-Pack
" delimitMate           | https://github.com/Raimondi/delimitMate
" neocomplete           | https://github.com/Shougo/neocomplete.vim
" tabular               | https://github.com/godlygeek/tabular
" tagbar                | https://github.com/majutsushi/tagbar
" vim-airline           | https://github.com/bling/vim-airline
" vim-colors-solarized  | https://github.com/altercation/vim-colors-solarized
" vim-easymotion        | https://github.com/Lokaltog/vim-easymotion
" vim-surround          | https://github.com/tpope/vim-surround


"" disabled plugins
"" ack.vim               | https://github.com/mileszs/ack.vim
"" nerdtree              | https://github.com/scrooloose/nerdtree
"" ctrlp.vim             | https://github.com/kien/ctrlp.vim
"" ultisnips             | https://github.com/SirVer/ultisnips
"" vim-snippets          | https://github.com/honza/vim-snippets
"" vim-fugitive          | https://github.com/tpope/vim-fugitive
"" vim-javascript        | https://github.com/pangloss/vim-javascript
"" vim-coffee-script     | https://github.com/kchmck/vim-coffee-script
"" syntastic             | https://github.com/scrooloose/syntastic



"" load pathogen before syntax on
" https://github.com/tpope/vim-pathogen#runtime-path-manipulation
call pathogen#infect()


""""""""""""""""""""""""""""""""""""""""""""""""""
"" plugin setting
""""""""""""""""""""""""""""""""""""""""""""""""""
let s:home = expand('~')
let s:vimrcs = s:home . '/.vim/vimrc.d/'
let s:bundle = s:home . '/.vim/bundle/'

execute 'source 's:vimrcs . 'basic.vim'

execute 'source 's:vimrcs . 'bufexplorer.vim'
execute 'source 's:vimrcs . 'tagbar.vim'
execute 'source 's:vimrcs . 'gtags.vim'
execute 'source 's:vimrcs . 'delimitmate.vim'

"" execute 'source 's:vimrcs . 'ultisnips.vim'

if isdirectory(s:bundle . 'neocomplete.vim')
    execute 'source 's:vimrcs . 'neocomplete.vim'
elseif isdirectory(s:bundle . 'YouCompleteMe')
    " TODO youcompleteme.vim
    " execute 'source 's:vimrcs . 'youcompleteme.vim'
elseif isdirectory(bundle . 'neocomplcache.vim')
    execute 'source 's:vimrcs . 'neocomplcache.vim'
endif
