unset HISTFILE

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export MANPAGER='vim -M +MANPAGER -'
export PAGER='less'
export LESS='-F -g -i -M -R -S -w -X -z-4'
export EDITOR='vim'
export VISUAL='vim'

complete -d cd

set -o vi

shopt -s nocaseglob
shopt -s cdspell
shopt -s dotglob

[ -z "$PS1" ] && return
PS1="\A \W \$ "

alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias ..='cd ..'
alias df='df -h'
alias du='du -shc'

alias lh='ls -d .*'
alias ll='ls -FGlAhp'

alias pgrep='pgrep -il'
alias remove='rm -rfv'

alias vi='vim'
alias v='vi'
