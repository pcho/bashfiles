HISTSIZE=10000
HISTFILESIZE=2000000
HISTFILE=$HOME/.bashfiles/.bash_history
HISTCONTROL=ignoreboth
HISTIGNORE='ls:ll:ls -alh:pwd:clear:history'
HISTTIMEFORMAT='%F %T '
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

shopt -s histappend
shopt -s cmdhist
shopt -s nocaseglob
shopt -s cdspell
shopt -s dotglob

complete -d cd

set -o vi

[ -z "$PS1" ] && return
PS1="\[033\][00;34m(\\h)\[033\][00;00m \\A \\w \$ "

export PIP_CONFIG_FILE="$HOME/.pip/pip.conf"
export XDG_DATA_HOME="$HOME/.xdg/"
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export MANPAGER='vim -M +MANPAGER -'
export PAGER='less'
export LESS='-F -g -i -M -R -S -w -X -z-4'
export EDITOR='vim'
export VISUAL='vim'
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude node_modules --exclude .git --exclude venv'

export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/usr/local/go/bin"

export PATH="$PATH:~/.bin"
export PATH="$PATH:~/.bin/setup"

export PNPM_HOME="$HOME/.xdg/pnpm"
export PATH="$PNPM_HOME:$PATH"

alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias ..='cd ..'
alias df='df -h'
alias du='du -shc'

alias lh='ls -d .*'
alias ll='ls -FGlAhp'
alias ls='ls -la --color=auto'

alias pgrep='pgrep -il'
alias remove='rm -rfv'

alias g='git'
alias vi='vim'
alias v='vi'
alias p='pnpm'

alias pass='date +%s | sha256sum | base64 | head -c 32 ; echo'
alias sup='sudo apt-get update && sudo apt-get upgrade'

eval "$(dircolors ~/.dircolors)"

source "$HOME/.fzf.bash"
