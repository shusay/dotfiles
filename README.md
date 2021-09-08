# 導入手順

#### Xcode をインストール

- ターミナルで次のコマンドを入力 `xcode-select --install`

#### Homebrew をインストール

- [http://brew.sh/]

#### ログインシェルを brew の zsh に変更

1. `brew install zsh`

- `sudo vi /etc/shells`
- 一番下に `/usr/local/bin/zsh` を追加
- `chsh -s /use/local/bin/zsh`
- `chpass`で zsh が有効になっていることを確認

### 各種ツールのインストール

- `brew install git rbenv vim openssl cmake curl imagemagick readline wget zsh zplug mysql go`
- `brew install ghq peco`

### 必要なリポジトリを home に clone

1. `mkdir ~/.zsh`

# 2. `mkdir ~/.vim`

- `mkdir ~/.zplug`

# + `git clone https://github.com/zplug/zplug $ZPLUG`

# + `mkdir ~/.vim/bundle`

# + `cd ~/.vim/bundle`

# + `git clone https://github.com/Shougo/neobundle.vim.git`

# + `cd`

### dotfiles インストール(vim の設定とかが入っているもの)

- `ghq get git://github.com/shusaid/dotfiles.git`
- `./setup.sh`
