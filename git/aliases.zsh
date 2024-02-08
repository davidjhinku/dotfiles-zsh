# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gp='git push origin HEAD'
alias gpp='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gca='git commit -a'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gbd='git branch -D'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga="git add ."
alias gcm="git commit -m"
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'
