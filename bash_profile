export TERM=xterm-256color

# aliasing ls to produce a detailed list with colours
alias ls='ls -lGh'

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[1;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

function parse_git_branch1 {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1]/"
}

export PS1="\[${COLOR_WHITE}\]\u \[${COLOR_LIGHT_GRAY}\]\h\[${COLOR_GREEN}\]\$(parse_git_branch1) \[${COLOR_LIGHT_GRAY}\]\w$ \[${COLOR_NC}\]"

## load bash_profile.local if it exists?
#  example found here: https://github.com/daschu117/homedir/blob/master/bash_profile
[[ -f ~/.bash_profile.local ]] && . ~/.bash_profile.local

## Git aliases
#### just testing this out
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gv='git commit -v'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

# screen aliases
alias sr='screen -r'
alias sl='screen -list'
alias sf='screen -r -d'

# Fixing node-gyp with NFS: https://github.com/TooTallNate/node-gyp/issues/147
export LINK=g++
