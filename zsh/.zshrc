# Meta aliases
alias aliases="cat ~/.zshrc | grep alias"

# Other aliases
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
# alias hg="history | grep"
alias -g G="| grep"
alias myip="curl http://ipecho.net/plain; echo"
alias c="clear"

# git aliases
# alias -g g="git"
alias gpull="git pull origin main"
alias -g gc="git checkout"
alias -g gcm="git checkout main"

alias -g gb="git branch"

alias -g gadd="git add ."
alias -g gbd="git branch -D"
# alias -g gcb="git checkout -b"
alias -g gl="git log --graph --oneline --decorate"

# function gcb() {
#   git checkout -b nicocc.BFUL-$1.$2
# }

# function gcb() {
#   if [[ $1 =~ ^[[:digit:]]+$ ]]; then
#     echo "nicocc.BFUL-$1.$2"
#   else
#     echo "Type Error: $1 is not an int"
#   fi
#   # echo "$@"
# }

# functions
# TODO: Fix fxn so it works
# function gitall() {
#    git add .
#    if [ "$1" != "" ] # or better, if [ -n "$1" ]
#    then
#        git commit -m "$1"
#    else
#        git commit -m update
#    fi
#    git push origin $(git rev-parse --abbrev-ref HEAD)
#}
