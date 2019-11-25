#!/bin/bash

DOT_FILES=( .gemrc .zshrc .zprofile .bashrc .bash_profile .vimrc .gvimrc .gitconfig .gitignore )
PATHES="src/github.com/shusaid/dotfiles"

for file in ${DOT_FILES[@]}
do
  if [ -a $HOME/$file ]; then
    if [ -L $HOME/$file ]; then
      echo "既にシンボリックリンクが存在します！: $file"
    elif [ -d $HOME/$file ]; then
      echo "既にディレクトリが存在します！: $file"
    else
      echo "既にファイルが存在します！: $file"
    fi
  else
    ln -s $HOME/$PATHES/$file $HOME/$file
    echo "シンボリックリンクを貼りました！: $file"
  fi
done

# karabiner.json
REMAP_FILE=( karabiner.json )

for rfile in ${REMAP_FILE[@]}
do
  if [ -a $HOME/.config/karabiner/$rfile ]; then
    rm -f $HOME/.config/karaniber/$rfile
    ln -s $HOME/$PATHES/$rfile $HOME/.config/karabiner/$rfile
    echo "$rfile のシンボリックリンク貼ったよ"
  else
    echo "Karabiner-Elementsがないでござる"
  fi
done
