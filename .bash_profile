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
PS1="\033[00;34m(\\h)\033[00;00m \\A \\w \$ "

export XDG_DATA_HOME=$HOME/.xdg/
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export MANPAGER='vim -M +MANPAGER -'
export PAGER='less'
export LESS='-F -g -i -M -R -S -w -X -z-4'
export EDITOR='vim'
export VISUAL='vim'

export PATH=$PATH:~/.bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/.bin/.setup

export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/sbin:$PATH


if [ -f /.dockerenv ]; then
    source $HOME/.dotfiles/.zsh/.alias.zsh

    export TERM='xterm-256color'

    export GOPATH=/.go
    export CARGO_HOME=/usr/local/cargo

    export PATH=/.gem/bin:$PATH
    export PATH=/user/local/cargo/bin:$PATH
else
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
fi

eval $(dircolors ~/.dircolors)

if [[ ! "$PATH" == */$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.bash" 2> /dev/null

source "$HOME/.fzf/shell/key-bindings.bash"
