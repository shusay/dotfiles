# 導入手順

#### Xcodeをインストール

- ターミナルで次のコマンドを入力 `xcode-select --install`
※ これ以降、必要なツールを動かすためにはxcodeが必要

#### Homebrewをインストール http://brew.sh/

- ターミナルで次のコマンドを入力 `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

#### ログインシェルをzshに変更

1. `brew install zsh`
- `sudo vi /etc/shells`
- 一番下に `/usr/local/bin/zsh` を追加
- `chsh -s /use/local/bin/zsh`
- `chpass`でzshが有効になっていることを確認

### 各種ツールのインストール
`brew install git rbenv ruby-build vim openssl tmux reattach-to-user-namespace cmake curl imagemagick tig readline wget zsh terminal-notifier`

### 必要なリポジトリをhomeにclone
1. `mkdir ~/.zsh`
2. `mkdir ~/.vim`
+ `cd ~/.zsh`
+ `git clone https://github.com/zsh-users/antigen.git`
+ `git clone https://github.com/marzocchi/zsh-notify.git`
+ `mkdir ~/.vim/bundle`
+ `cd ~/.vim/bundle`
+ `git clone https://github.com/Shougo/neobundle.vim.git`
+ `cd`

### dotfilesインストール(vimの設定とかが入っているもの)
+ `git clone https://github.com/shusay/dotfiles`
+ `cd ~/dotfiles/.tmux`
+ `git clone https://github.com/erikw/tmux-powerline.git`
+ `cd ../`
+ `./setup.sh`
+ `exec $SHELL`
+ `vim`

### terminalとvimの色をかっこ良く
+ https://code.google.com/p/iterm2/wiki/ColorGallery にアクセス
+ **Solarized Dark**と**Solarized Light**のリンクを右クリックし、「リンク先を別名で保存」
+ iTermに戻り、`⌘+,`を押して環境設定画面を開く
+ Profiles -> [設定したいプロファイル] -> Colors に移動
+ [Load Presets] セレクトボックスから、Import を選びます
+ 以上
