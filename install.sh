#!/bin/bash


# install pathogen
mkdir -p ~/.vim/{autoload,bundle}
#wget https://tpo.pe/pathogen.vim -O ~/.vim/autoload/pathogen.vim


# download plugins
function clone
{
    url=$1

    # filename=$(echo $url | ark -F'/' '{print $NF}')
    # {print $NF} may not work when url has a trailing '/' character
    filename=$(echo $url | awk -F"github.com/" '{print $2}' | awk -F'/' '{print $2}')

    echo 
    echo clone $filename

    if [ -e $filename ]
    then
        read -p "$filename exists, delete it? [Y/n] " delete
        if [[ $delete == "n" ]]
        then
            echo skip $filename
            return
        fi
    fi

    echo delete $filename
    rm -rf $filename
    git clone --depth=1 $url
}

urls=$(awk -F'|' '{print $3}' < vimrc)

cd bundle

for url in $urls
do
    if [[ $url == 'https://github.com/'* ]]
    then
        clone $url
    fi
done

cd -
