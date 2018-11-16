HISTSIZE=10000

source ~/.git-prompt.sh
PS1='\[\e[1m\][\t] \w$(__git_ps1 " (%s)") \$ \[\e[0m\]'

alias ..='cd ..'
alias sl='gls --almost-all --color --classify --human-readable -l -X'  # brew install coreutils
alias tl='tree -L 5 -C'  # brew install tree
alias cgrep='grep --color -i -n'

alias g='git'
alias d='python /Library/Python/2.7/site-packages/cdiff.py -s -w 110 --ignore-all-space'  # pip install cdiff
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='l -n 1 | git show -w | d'  # show diff of last commit (inspect changes before pushing)
alias clean_pyc="find . -name '*.pyc' -delete"

# # iTerm2>Install Shell Integration
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# eval "$(pyenv init -)"
