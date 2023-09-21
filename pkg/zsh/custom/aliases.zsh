#Aliases

## Overwrite existing command
##  to use actual command without alias
##  prefix it with backslash (\)
##  eg. \ls, \rm -rf
alias rm="trash"
alias apt="sudo nala"
alias apt-get="sudo nala"
alias ls="exa --icons"
alias cat="ccat"
alias gpo="git pull origin"

kubevsms2 () {
  kubectl port-forward -n vsms-v2-development $(kubectl get pods -n vsms-v2-development | grep 'vsms2-rest-api' | awk '{print $1}') 3001:3000
}

kubeorder () {
  kubectl port-forward -n platform-development $(kubectl get pods -n platform-development | grep 'order' | awk '{print $1}') 3000:3000
}
