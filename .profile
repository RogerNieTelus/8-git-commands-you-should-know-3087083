function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
BYellow="\[\033[1;33m\]"
Purple="\[\033[0;35m\]"
PS1="$GREEN\u@\h$Purple:\w$BYellow\$(parse_git_branch)$NO_COLOR\$ "

