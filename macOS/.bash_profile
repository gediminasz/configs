HISTSIZE=10000

source ~/.git-prompt.sh
PS1='\[\e[1m\] \w$(__git_ps1 " (%s)") \[\e[0m\]'

alias ..='cd ..'
alias sl='gls --almost-all --color --classify --human-readable -l -X'
alias clean_pyc="find . -name '*.pyc' -delete"
alias pr='poetry run'

alias g='git'
alias gs='g s'
alias d='cdiff -s -w 110 --ignore-all-space'
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='l -n 1 | git show -w | d'  # show diff of last commit (inspect changes before pushing)

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# https://github.com/wting/autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh
