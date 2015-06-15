# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push -u origin HEAD'
alias gd='git diff'
alias gds='git diff --cached'
alias gc='git commit -v'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias g="git"
alias ga="git add ."
alias gpr="git pull --rebase" 
# only does it on master
alias gbranchprune='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
