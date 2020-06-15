# Path to your oh-my-zsh installation.
export ZSH=/home/johnnormancapule/.oh-my-zsh
ZSH_THEME="gnzh"

plugins=(
  git
  ubuntu
  emacs
  asdf
  zsh-z
)
source $ZSH/oh-my-zsh.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

### ALIASES ###
alias rmt="rmtrash"

### COMMANDS ###
alias py="python"

### GIT ###
alias gaa="git add --all"
alias ga="git add"
alias gs="git status"
alias gstash="git stash"
alias gsh="git show"
alias gch="git checkout"
alias gcp="git cherry-pick"
alias gca="git commit --amend"
alias gc="git commit"
alias gt="git town"
alias glgraph="git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\' --abbrev-commit"
alias gblatest="git for-each-ref --sort=committerdate refs/remotes/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

### RUBY ###
alias be="bundle exec"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export KERL_CONFIGURE_OPTIONS='--disable-debug --without-javac'
export LC_ALL=en_US.UTF-8
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
