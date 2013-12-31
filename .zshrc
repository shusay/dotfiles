export PATH=$PATH:~/bin
export TERM="xterm-256color"

# vim
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias v='vim'

# antigen
source $HOME/.zshrc.antigen

# Emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -U compinit && compinit
zstyle ':completion:*:default' menu select=2

# suggest
setopt correct

# COLORS
# 名前で色を付けるようにする
autoload -U colors
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34' "${LS_COLORS}"
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

# 自動cd&ls
function cd(){
  builtin cd $@
  ls
}

# No beep
setopt NO_BEEP

# ----- prompt ----- #
## vcs-info
autoload -Uz vcs_info # load
setopt prompt_subst

## style
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' stagedstr "%F{136}!%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{160}+%f"
zstyle ':vcs_info:git:*' formats " - %F{166}%b%f"

## load
precmd () { vcs_info } # call
GPROMPT="${vcs_info_msg_0_}"
ARROW="%F{33}%{ ➻  %}%f"

## check directory unless git
if [[ -z ${vcs_info_msg_0_} ]]; then
  psvar[1]=""
else
  [[ -n "vcs_info_msg_0_" ]] && psvar=[1]=( "${vcs_info_msg_0_}" )
fi

## PROMPT
PROMPT='%F{37}%{❀ %}%f%F{254}%#@%m%f %F{65}*%f %F{254}%~%f%F{33}%{ ➻  %}%f'

# ----- alias ----- #
# cmd
alias g='git'
alias tmux="TERM=xterm-256color tmux"

alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'

alias src='source'

alias ..='cd ../'

# bundle
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle'

# rbenv
alias re='rbenv exec'

# keyremap4macbook
alias private='cd $HOME/Library/Application\ Support/KeyRemap4MacBook/'

# dotfiles
alias dotfiles='cd ~/dotfiles'

# projects
## vivivit
alias vivivit='cd ~/workspace/wannar4user'
alias vivivit-admin='cd ~/workspace/wannar4admin'
alias vivivit-inc='cd ~/workspace/vivivitinc'
alias vrbn='cd ~/workspace/vivivit_recruit_bn'

## shitmovie
alias shit='cd ~/workspace/shitmovie'


