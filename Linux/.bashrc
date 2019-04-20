HISTSIZE=10000

source ~/.git-prompt.sh
PS1='\[\e[1m\] \w$(__git_ps1 " (%s)") \[\e[0m\]'

alias ..='cd ..'
alias sl='gls --almost-all --color --classify --human-readable -l -X'  # brew install coreutils
alias clean_pyc="find . -name '*.pyc' -delete"
alias pr='poetry run'

alias g='git'
alias gs='g s'
alias d='python /Library/Python/2.7/site-packages/cdiff.py -s -w 110 --ignore-all-space'  # pip install cdiff
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='l -n 1 | git show -w | d'  # show diff of last commit (inspect changes before pushing)

# # iTerm2>Install Shell Integration
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# # pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# # poetry
# export PATH="$HOME/.poetry/bin:$PATH"

# # https://github.com/wting/autojump
# [[ -s /home/gz/.autojump/etc/profile.d/autojump.sh ]] && source /home/gz/.autojump/etc/profile.d/autojump.sh
