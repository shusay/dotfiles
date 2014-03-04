# 導入手順
+ Xcodeをインストール
+ Homebrewをインストール http://brew.sh/
+ ログインシェルをzshに変更
+ brew install zsh
+ sudo vi /etc/shells
+ 一番下に /usr/local/bin/zsh を追加
+ chpass /use/local/bin/zsh
+ chpass で確認
+ rbenv, ruby-build, gcc(commandlinetool), MacVim,tmuxは最低いれとく
+ brew install vim #MacVimを使わない場合のみ。tmuxやpowerlineを使用する際に、pythonでコンパイルされたvimが必要になるため
+ brew install reattach-to-user-namespace
+ antigenを$HOMEにclone
+ mkdir ~/.zsh
+ cd ~/.zsh
+ antigen, zsh-notifyをclone
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
