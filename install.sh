#!/bin/bash

cp vrapperrc ~/.vrapperrc

# install pathogen
mkdir -p ~/.vim/{autoload,bundle}
wget https://tpo.pe/pathogen.vim -O ~/.vim/autoload/pathogen.vim


# install gtags
function install_gtags
{
    GTAT='/usr/local/share/gtags/gtags.vim'
    if [ -r $GTAT ]
    then
        read -p 'gtags.vim found, copy it into plugin? [Y/n] ' action
        if [[ $action == "n" ]]
        then
            echo skip gtags
            return
        fi
        echo use gtags
        mkdir -p ~/.vim/plugin
        cp $GTAT ~/.vim/plugin/
    fi
}

install_gtags

# download plugins
function clone
{
    url=$1
    filename=$2

    if [ -e $filename ] && [ -d $filename/.git ]
    then
        read -p "$filename exists, upadte it? [Y/d/q] " action
        if [[ $action == "q" ]]
        then
            echo skip $filename
            return
        elif [[ $action == "d" ]]
        then
            echo delete $filename
            rm -rf $filename
            git clone --depth=1 $url
        else
            cd $filename
            git pull
            cd ..
        fi
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

        if [[ $filename == 'vimproc.vim' ]]
        then
            # compile vimproc
            echo 
            echo compile vimproc
            cd vimproc.vim
            make
            cd ..
        fi
    fi
done

cd ..
