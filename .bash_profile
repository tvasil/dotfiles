# Bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# GOPATH
export GOPATH=$HOME/golang/projects

# Colors & PS1 appearance
clr_apricot='\033[38;5;173m'
clr_reset='\e[0m' 
clr_yellow='\033[33m'
clr_wine='\033[38;5;162m'

export PS1="\[$clr_apricot\](\$(basename \"\$CONDA_PREFIX\")) \[$clr_reset\]\u@\h \[$clr_yellow\]\w\[$clr_wine\]\$(__git_ps1)\[$clr_reset\] $ "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tania/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tania/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tania/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tania/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ALIASES #
alias mv="mv it"
alias ll="ls -lha"
alias gs="git status"
alias sl=ls
