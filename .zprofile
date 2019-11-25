export LANG=ja_JP.UTF-8
export TERM="xterm-256color"

# BASICPATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin
# RBENV=$HOME/.rbenv/shims:$HOME/.rbenv/versions:$HOME/.rbenv/bin
# HEROKU=/usr/local/heroku/bin
# NODEPATH=$HOME/.nodebrew/current/bin
BASIC=/usr/local/sbin:/usr/sbin:/usr/bin:/bin:/sbin
BREW=/usr/local/bin
RBENV=$HOME/.rbenv/shims
NODENV=$HOME/.nodenv/bin
MYSQL=/usr/local/opt/mysql@5.7/bin
GO=$HOME
GHQ=$GO/bin
ZPLUG=$HOME/.zplug

export PATH=$BREW:$BASIC:$ZPLUG:$RBENV:$NODENV:$MYSQL:$GO:$GHQ:$PATH

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - zsh)"; fi
