#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set rtp+=~/tabnine-vim
' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

git clone --depth 1 https://github.com/zxqfl/tabnine-vim ~/.vim_runtime/my_plugins/tabnine-vim
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

