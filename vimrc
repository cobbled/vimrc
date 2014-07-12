"+-------------------+----------------------------------------------------+
"| auto-pairs        | https://github.com/jiangmiao/auto-pairs            |
"| BufExplorer       | https://github.com/jlanzarotta/bufexplorer         |
"| clang_complete    | https://github.com/Rip-Rip/clang_complete          |
"| color sample pack | https://github.com/vim-scripts/Colour-Sampler-Pack |
"| drawit            | https://github.com/vim-scripts/DrawIt              |
"| neocomplete       | https://github.com/Shougo/neocomplete.vim          |
"| syntastic         | https://github.com/scrooloose/syntastic            |
"| tagbar            | https://github.com/majutsushi/tagbar               |
"| unisnips          | https://github.com/SirVer/ultisnips                |
"| vim-airline       | https://github.com/bling/vim-airline               |
"| vim-coffee-script | https://github.com/kchmck/vim-coffee-script        |
"| vim-javascript    | https://github.com/pangloss/vim-javascript         |
"| vim-node          | https://github.com/moll/vim-node                   |
"| vim-snippets      | https://github.com/cobbled/vim-snippets            |
"+-------------------+----------------------------------------------------+
"
"+------------------------------------------------------------------------+
"| Alternatives for code completion                                       |
"+-------------------+----------------------------------------------------+
"| neocomplcache                                                          |
"| YouCompleteMe                                                          |
"| python-mode                                                            |
"+-------------------+----------------------------------------------------+



"" Download latest vim builds at
" http://koji.fedoraproject.org/koji/buildinfo?buildID=519487

"" load pathogen before syntax on, I don't know why
call pathogen#infect()
"call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""""""""""""""
"" plugin setting
""""""""""""""""""""""""""""""""""""""""""""""""""
let home = expand('~')
let vimrcs = home . '/.vim/vimrc.d/'
let bundle = home . '/.vim/bundle/'

execute 'source 'vimrcs . 'basic.vim'

execute 'source 'vimrcs . 'bufexplorer.vim'
execute 'source 'vimrcs . 'tagbar.vim'
execute 'source 'vimrcs . 'ultisnips.vim'
execute 'source 'vimrcs . 'gtags.vim'

if isdirectory(bundle . 'neocomplete.vim')
    execute 'source 'vimrcs . 'neocomplete.vim'
    if isdirectory(bundle . 'clang_complete')
        execute 'source 'vimrcs . 'clang_complete.vim'
    endif
elseif isdirectory(bundle . 'YouCompleteMe')
    " TODO youcompleteme.vim
    " execute 'source 'vimrcs . 'youcompleteme.vim'
elseif isdirectory(bundle . 'neocomplcache.vim')
    execute 'source 'vimrcs . 'neocomplcache.vim'
endif

