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
  docker-compose
)
source $ZSH/oh-my-zsh.sh
HISTFILE="${HOME}/.zsh_history"
setopt SHARE_HISTORY

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

### ALIASES ###
alias rmt="rmtrash"
alias vi="'vim'"
alias vim="nvim"
alias ngrok="~/ngrok"
alias gt="git-town"
alias update_tools="
  sudo apt-get update -y;
  sudo apt-get upgrade -y;
  sudo apt autoremove;
  brew tap --repair;
  brew update;
  brew upgrade;
  brew cleanup;
  asdf plugin-update --all;
  asdf update;
  vim +PlugUpdate +qall;
  (cd $HOME/.emacs.d && git pull);
  omz update;
  sudo apt-get clean;
"

### DOCKER ###
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
alias dcrs="docker-compose run --rm --service-ports"
alias dcre="docker-compose run --rm --entrypoint"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down -t 0 --remove-orphans"
alias dce="docker-compose exec"
alias de="docker exec -it"

### TOOLS ###
alias k="kubectl"

### COMMANDS ###
alias ec="emacs27"
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
alias gsetb="git push --set-upstream origin \$(git rev-parse --abbrev-ref HEAD)"

### RUBY ###
alias be="bundle exec"

export EDITOR='vim'
# open chrome from wsl to windows
# export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'
# use Xserver
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export KERL_CONFIGURE_OPTIONS='--disable-debug --without-javac'
export LC_ALL=en_US.UTF-8
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# WSL2 ssh weirdness
eval `ssh-agent -s`
ssh-add

cd() {
  builtin cd $argv
  pwd > ~/.cache/.last_dir
}

unalias z
z() {
  zshz 2>&1 $argv
  pwd > ~/.cache/.last_dir
}

if [ -f ~/.cache/.last_dir ]; then
  cd `cat ~/.cache/.last_dir`
fi

# fnm
export PATH=/home/johnnormancapule/.fnm:$PATH
source ~/nvm_scripts/fnm

export OVERCOMMIT_DISABLE=1
