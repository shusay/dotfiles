# 導入手順
+ rbenv/ruby-buildとかgccとかMacVimはいれとく
+ brew install vim #pythonでコンパイルされている必要があるため
+ brew install reattach-to-user-namespace
+ antigenを$HOMEにclone
+ mkdir ~/.antigen
+ mv antigen/ .antigen/
+ ~/.vim/bundle を作成
+ ~/.vim/bundle/にneobundle.vimをclone
+ ~/にdotfilesをclone
+ cd ~/dotfiles/.tmux
+ tmux-powerlineをclone
+ ../
+ ./setup.sh
+ exec $SHELL
+ ほいでvimを開く
+ 以上
