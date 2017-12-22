HISTSIZE=10000

# https://github.com/git/git/blob/8976500cbbb13270398d3b3e07a17b8cc7bff43f/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh
PS1='\[\e[1m\][\t] \w$(__git_ps1 " (%s)") \$ \[\e[0m\]'

source ~/.git-completion.bash

alias ..='cd ..'
alias sl='gls --almost-all --color --classify --human-readable -l -X'  # brew install coreutils
alias tl='tree -L 5 -C' # brew install tree
alias notify="osascript -e 'display notification with title \"Complete!\"' }"  # OSX notification
alias cgrep='grep --color -i -n'

alias g='git'
alias d='python /Library/Python/2.7/site-packages/cdiff.py -s -w 120 --ignore-all-space'  # pip install cdiff
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='l -n 1 | git show -w | d'  # show diff of last commit (inspect changes before pushing)

## virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/dev
# source $HOME/Library/Python/2.7/bin/virtualenvwrapper.sh

## iTerm2>Install Shell Integration
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# eval "$(rbenv init -)"

## brew install pyenv
# eval "$(pyenv init -)"
