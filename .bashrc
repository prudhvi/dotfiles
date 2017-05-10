function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "
alias psql='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias psqlstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias gb="git branch"
alias gc="git checkout"
alias ga="git add"
alias gpo="git push origin"
alias gs="git status"
alias gd="git diff"
alias gp="git pull"
alias gane="git add .;git commit --amend --no-edit"
alias be="bundle exec"
alias rake='be rake'
