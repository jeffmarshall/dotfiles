export EDITOR=vim
export VISUAL=vim

bindkey -e
# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# # Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
# Vi style:
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line

# aliasing ls to produce a detailed list with colours
alias ls='ls -lGha'

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# helpful aliases
alias ..='cd ..'
alias tm='tmux'
alias gr='grep -rinI'
#
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

alias rmorig="find . -name '*.orig' -delete "


zstyle ":completion:*:commands" rehash 1
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
