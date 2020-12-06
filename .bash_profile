export GOPATH=$HOME/golang/projects

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

clr_apricot='\033[38;5;173m'
clr_reset='\e[0m' 

export PS1="\[$clr_apricot\](\$(basename \"\$CONDA_PREFIX\")) \[$clr_reset\]\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

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
