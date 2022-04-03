# Methods
gitAddCommit(){
  git commit -a -m "$*"
}

gitPushBranch() {
  git push --set-upstream origin $1
}

gitCreateBranch(){
  git checkout -b "$1"
}

gitDeleteBranch(){
  git branch -D "$1"
}

# Aliases
alias c=gitAddCommit
alias gb=gitCreateBranch
alias gb-=gitDeleteBranch
alias gpo=gitPushBranch

# Shortcuts
alias gp='git pull' #pull remote changes
alias gs='git status' #check the current status
alias gl='git log' #shows the commit logs
alias gc='git checkout' #go to a specific branch
alias gc-='git checkout -' #go back to the last branch you visited
alias gc.='git checkout .' #delete all local changes in the repository that have not been added to the staging area
alias gr='git reset HEAD^' #undo the most recent commit, leaves the file/folders unstaged in your local repository
alias gst='git stash'
alias gsta='git stash apply'

# Default Branches
alias main='git checkout main'
alias master='git checkout master'
alias develop='git checkout develop'