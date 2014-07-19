# vimrc

    cd ~
    git clone https://github.com/cobbled/vimrc .vim
    cd .vim
    ./install.sh

## Install libclang (necessary if you want to use clang_complete)

    aptitude install libclang-3.4-dev

## Install ack-grep (recommended)

    aptitude install ack-grep

## Install Pathogen Manually (not recommended)

    mkdir -p ~/.vim/{autoload,bundle}
    wget https://tpo.pe/pathogen.vim -O ~/.vim/autoload/pathogen.vim

## Insall Drawit Manually (not recommended)

Download DrawIt at: [Download Link](http://www.vim.org/scripts/script.php?script_id=40)

### Install Details

    vim DrawIt.vba.gz
    :so %
    :q

### Start and stop DrawIt

    \di to start DrawIt.
    \ds to stop  DrawIt.

