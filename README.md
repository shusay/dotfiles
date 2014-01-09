# 導入手順
+ rbenv/ruby-buildとかgccとかMacVimとかtmuxはいれとく
+ brew install vim #pythonでコンパイルされている必要があるため
+ brew install reattach-to-user-namespace
+ antigenを$HOMEにclone
+ mkdir ~/.zsh
+ mv antigen/ .zsh/
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
