HISTSIZE=10000

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
function gitprompt() {
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [ -n "$branch" ]
    then
        changes_present=$(git diff --quiet || echo -e "${RED}•${ENDCOLOR}")
        cached_changes_present=$(git diff --cached --quiet || echo -e "${GREEN}•${ENDCOLOR}")
        echo "($branch$changes_present$cached_changes_present) "
    fi
}
# \[\e[1m\] = bold
# \w = current path
# \[\e[0m\] = end bold
PS1='\[\e[1m\]\w $(gitprompt)\[\e[0m\]'

alias ..='cd ..'
alias sl='ls --almost-all --color --classify --human-readable -l -X'
alias clean_pyc="find . -name '*.pyc' -delete"
alias pr='poetry run'
alias h='history | grep -i'

alias g='git'
alias gs='g s'
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='git log -n 1 | git show -pw --stat | d'  # show diff of last commit (inspect changes before pushing)

alias dsrdump='dsrdump +C +Pl'
alias dcmdump='dcmdump +C'

# https://github.com/ymattw/ydiff
function d() {
    cols=$(tput cols)
    if [ "$cols" -gt 199 ]; then
        width=$(expr $cols / 2)
        ydiff -s -w $width --ignore-all-space --stat -p $@;
    else
        ydiff --ignore-all-space --stat -p $@;
    fi
}

export PYTHONBREAKPOINT="pudb.set_trace"

# https://github.com/pyenv/pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# https://github.com/sdispater/poetry
export PATH="$HOME/.poetry/bin:$PATH"

# https://github.com/wting/autojump
[[ -s /home/gz/.autojump/etc/profile.d/autojump.sh ]] && source /home/gz/.autojump/etc/profile.d/autojump.sh
