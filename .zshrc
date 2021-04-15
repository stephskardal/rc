export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

export PATH=$PATH:~/.vimpkg/bin
# export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export PATH=~/bin:$PATH
alias vi='mvim -v'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH History settings
export HISTFILE=~/.zsh_history
export HISTFILESIZE=4000
export HISTSIZE=4000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt APPEND_HISTORY
setopt SHARE_HISTORY

# Find a file, append opening it to history, then open it
alias fopen='OUTPUT=$(fzf); print -sr "vi $OUTPUT"; vi $OUTPUT'

# Alias grep with rg
alias grep='rg'
alias ogrep='/usr/bin/grep'

alias smooshgit='smooshgit.sh'

alias gst='git status'
alias gf='git fetch'
alias gp='git pull'
alias gpf='git push --force'
alias grem='git rebase origin/master'
alias gcm='git checkout master'
alias gco='git checkout'
alias gbr='git branch'
alias gd='git diff'

# With rubocop
function rubr() {
  git diff HEAD --name-only| tr '\n' '\0'|xargs -0 find  2>/dev/null|xargs rubocop
}

# Docker aliases
alias dstop='docker stop $(docker ps -a -q)'
alias dstart='docker-compose up -d'
alias dps='docker ps'

# upstart setup
source ~/setup/.upstartrc

# I don't really use these
alias ga='git add'
alias gap='git add -p'
alias gb='git blame -w -M -C'
alias gdm='git diff master'
alias ci='git commit -m' # requires you to type a commit message
alias amend='git commit --amend --no-edit'
alias gpu='git push'
alias staged='git diff --cached'
alias gl="git l"
