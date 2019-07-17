# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias vim=nvim
alias vi=nvim

alias g=git
alias ga="git add"
alias gc="git commit"
alias gc!="git commit --amend"
alias gcmsg="git commit -m"
alias gd="git diff"
alias gr="git reset"
alias gm="git merge"
alias gst="git status"
alias gss="git status -s"
alias glo="git log"

alias src="exec $SHELL"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
