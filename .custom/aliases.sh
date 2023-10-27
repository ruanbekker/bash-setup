# functions
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# aliases
alias k=kubectl
alias kns=kubens

# shell
export PS1="\[\e[36m\]\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\] $ "
