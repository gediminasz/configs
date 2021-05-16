HISTSIZE=10000

setopt prompt_subst
function gitprompt() {
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [ -n "$branch" ]
    then
        changes_present=$(git diff --quiet || echo "%F{red}•%f")
        cached_changes_present=$(git diff --cached --quiet || echo "%F{green}•%f")
        echo "($branch$changes_present$cached_changes_present) "
    fi
}
PROMPT='%~ %B$(gitprompt)%b'

alias ..='cd ..'
alias sl='gls --almost-all --color --classify --human-readable -l -X --group-directories-first'
alias clean_pyc="find . -name '*.pyc' -delete"
alias pr='poetry run'
alias h='history | grep -i'

alias g='git'
alias gs='g s'
alias dca='d --cached'
alias dbr='d master..'  # diff between master and a specified branch (e.g. dbr features/my_branch)
alias dlc='git log -n 1 | git show -pw --stat | d'  # show diff of last commit (inspect changes before pushing)

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
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# https://github.com/wting/autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

PATH=$PATH:~/bin
