# Path to your oh-my-zsh installation.
export ZSH=/home/johnnormancapule/.oh-my-zsh
ZSH_THEME="wezm"

plugins=(
  git
  ubuntu
  emacs
  asdf
  zsh-z
  docker
)
source $ZSH/oh-my-zsh.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

### ALIASES ###
alias rmt="rmtrash"
alias vi="'vim'"
alias vim="nvim"
alias ngrok="~/ngrok"
alias gt="git-town"
alias update_tools="
  sudo apt-get update;
  sudo apt-get upgrade;
  sudo apt autoremove;
  brew update;
  brew upgrade;
  brew cleanup;
  omz update;
  asdf plugin-update --all;
  asdf update;
  vim +PlugUpdate +qall;
  (cd $HOME/.emacs.d && git pull);
"

### DOCKER ###
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down -t 0"
alias dce="docker exec -it"
# [D]ocker [r]un as a task
alias dr="docker-compose run --rm"
# [D]ocker [r]un as a [s]erver
alias drs="docker-compose run --rm --service-ports"
### COMMANDS ###
alias ec="emacsclient -c -a ''"
alias ect="emacsclient -c -a '' -t"

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

export EDITOR='vim'
# open browser from wsl to windows
export BROWSER=wslview

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export KERL_CONFIGURE_OPTIONS='--disable-debug --without-javac'
export LC_ALL=en_US.UTF-8
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
