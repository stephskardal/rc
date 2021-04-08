
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

export PATH=$PATH:~/.vimpkg/bin
# export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export PATH=~/bin:$PATH
alias vi='mvim -v'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The need for speed
alias fopen='OUTPUT=$(fzf); vi ${OUTPUT}; history -s vi ${OUTPUT}'
alias grep='rg'

alias smooshgit='smooshgit.sh'

# I don't really use these
alias st='git status -s'
alias ga='git add'
alias gap='git add -p'
alias gb='git blame -w -M -C'
alias gd='git diff'
alias gdm='git diff master'
alias ci='git commit -m' # requires you to type a commit message
alias amend='git commit --amend --no-edit'
alias gf='git fetch'
alias gp='git pull'
alias gpu='git push'
alias gpf='git push --force'
alias br='git branch'
alias gme='git branch --merged'
alias gmed='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'
alias co='git checkout'
alias staged='git diff --cached'
alias master='git checkout master'
alias gl="git l"

# Docker aliases
alias dstop='docker stop $(docker ps -a -q)'
alias dstart='docker-compose up -d'

# upstart setup
source ~/setup/.upstartrc
