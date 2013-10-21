export PATH=$PATH:~/bin
export TERM="xterm-256color"

# Emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# completion
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=2

# COLORS
# 名前で色を付けるようにする
autoload colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

# No beep
setopt NO_BEEP

# PROMPT
PROMPT='[%n@%m %C]%% '

# VPS_alias
alias vps='ssh -p 10239 shusay@133.242.191.118'
alias vpsa='ssh -p 10239 admin@133.242.191.118'

# cmd
alias v='vim'
alias g='git'
alias gl='git log'
alias gst='git status'
alias tmux="TERM=xterm-256color tmux"

alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'

alias src='source'

alias ..='cd ../'
alias cda='cd apps'
alias cdv='cd views'

alias be='bundle exec'

# vivivit
alias vivivit='cd ~/workspace/wannar4user'
alias vivivit-admin='cd ~/workspace/wannar4admin'
alias vivivit-inc='cd ~/workspace/vivivitinc'
alias vrbn='cd ~/workspace/vivivit_recruit_bn'
