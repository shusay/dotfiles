# 導入手順

#### Xcodeをインストール
- ターミナルで次のコマンドを入力 `xcode-select --install`

#### Homebrewをインストール
- [http://brew.sh/]

#### ログインシェルをbrewのzshに変更
1. `brew install zsh`
- `sudo vi /etc/shells`
- 一番下に `/usr/local/bin/zsh` を追加
- `chsh -s /use/local/bin/zsh`
- `chpass`でzshが有効になっていることを確認

### 各種ツールのインストール
- `brew install git rbenv nodenv vim openssl cmake curl imagemagick readline wget zsh zplug mysql direnv go`
- `brew install ghq peco`
- Macvim kaoriyaをインストール

### 必要なリポジトリをhomeにclone
1. `mkdir ~/.zsh`
2. `mkdir ~/.vim`
+ `mkdir ~/.zplug`
+ `git clone https://github.com/zplug/zplug $ZPLUG`
+ `mkdir ~/.vim/bundle`
+ `cd ~/.vim/bundle`
+ `git clone https://github.com/Shougo/neobundle.vim.git`
+ `cd`

### dotfilesインストール(vimの設定とかが入っているもの)
+ `ghq get git://github.com/shusaid/dotfiles.git`
+ `./setup.sh`