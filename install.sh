#!/bin/bash

# cp vrapperrc ~/.vrapperrc

# install pathogen
mkdir -p ~/.vim/{autoload,bundle}
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O ~/.vim/autoload/pathogen.vim


# install gtags
function install_gtags
{
    local readonly GTAT='/usr/local/share/gtags/gtags.vim'
    if [ -r $GTAT ]
    then
#       read -p 'gtags.vim found, copy it into plugin? [Y/n] ' action
#       if [[ $action == "n" ]]
#       then
#           echo skip gtags
#           return
#       fi
        echo use gtags
        mkdir -p ~/.vim/plugin
        cp $GTAT ~/.vim/plugin/
    fi
}

install_gtags

# download plugins
function clone
{
    local url=$1
    local filename=$2

    if [ -e $filename ] && [ -d $filename/.git ]
    then
        cd $filename
        git pull
        cd ..
    else
        git clone --depth=1 $url
    fi
}

urls=$(sed -n '/^" .* | https/p' vimrc | awk -F'|' '{print $2}')

cd bundle

for url in $urls
do
    if [[ $url == 'https://github.com/'* ]]
    then
        # filename=$(echo $url | ark -F'/' '{print $NF}')
        # {print $NF} may not work when url has a trailing '/' character
        filename=$(echo $url | awk -F"github.com/" '{print $2}' | awk -F'/' '{print $2}')

        echo
        echo clone $filename

        clone $url $filename

        # if [[ $filename == 'vimproc.vim' ]]
        # then
        #     # compile vimproc
        #     echo
        #     echo compile vimproc
        #     cd vimproc.vim
        #     make
        #     cd ..
        # fi
    fi
done

cd ..
