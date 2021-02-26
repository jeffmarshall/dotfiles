export TERM=xterm-256color
export EDITOR=vim

# aliasing ls to produce a detailed list with colours
alias ls='ls -lGh'

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# helpful aliases
alias ..='cd ..'
alias tm='tmux'
alias gr='grep -rinI'

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

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1]/"
}

export PS1="\[${COLOR_WHITE}\]\u \[${COLOR_LIGHT_GRAY}\]\h\[${COLOR_LIGHT_GREEN}\]\$(git_branch) \[${COLOR_GREEN}\]\W \[${COLOR_LIGHT_GRAY}\]\$ \[${COLOR_NC}\]"

## Git aliases
#### just testing this out
alias pwb="git rev-parse --abbrev-ref HEAD"
alias ga='git add'
alias gap='git add -p'
alias gpwb='git push origin `pwb`'
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
alias grb='git rebase'
alias gwb="git rev-parse --abbrev-ref HEAD"

# Fixing node-gyp with NFS: https://github.com/TooTallNate/node-gyp/issues/147
export LINK=g++
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jeff/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jeff/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jeff/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jeff/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

## load bash_profile.local if it exists?
#  example found here: https://github.com/daschu117/homedir/blob/master/bash_profile
[[ -f ~/.bash_profile.local ]] && . ~/.bash_profile.local
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
