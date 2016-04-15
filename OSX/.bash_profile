alias ..='cd ..'

alias be='bundle exec'
alias bs='bundle exec spring'

alias s='git status'
alias d='python /Library/Python/2.7/site-packages/cdiff.py -s -w 120'  # pip install cdiff
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='l -n 1 | git show | d'  # show diff of last commit (inspect changes before pushing)

alias g='git'
alias l='git log --decorate'
alias sl='gls --almost-all --color --classify --human-readable -l -X'
alias tl='tree -L 5 -C'

# OSX notification
alias notify="osascript -e 'display notification with title \"Complete!\"' }"
