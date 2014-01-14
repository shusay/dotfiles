# 導入手順
+ シェルをzshに変更
+ brew install zsh
+ sudo vi /etc/shells
+ 一番下に /usr/local/bin/zsh を追加
+ chpass /use/local/bin/zsh
+ chpass で確認
+ rbenv/ruby-buildとかgccとかMacVimとかtmuxはいれとく
+ brew install vim #MacVimを使わない場合のみ。tmuxやpowerlineを使用する際に、pythonでコンパイルされたvimが必要になるため
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
+ vimを開く
+ 以上
