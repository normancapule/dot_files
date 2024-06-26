# Path to your oh-my-zsh installation.
export ZSH=/home/johnnormancapule/.oh-my-zsh
ZSH_THEME="wezm"

plugins=(
  git
  ubuntu
  asdf
  zsh-z
  docker
  docker-compose
  1password
  pyenv
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
  sudo apt dist-upgrade -y;
  sudo apt-get upgrade -y;
  sudo apt autoremove -y;
  brew tap --repair;
  brew update;
  brew upgrade;
  brew cleanup;
  asdf plugin-update --all;
  asdf update;
  vim +PlugUpdate +qall;
  omz update;
  sudo apt-get clean;
"

### DOCKER ###
alias dc="docker compose"
alias dcr="docker compose run --rm"
alias dcrs="docker compose run --rm --service-ports"
alias dcre="docker compose run --rm --entrypoint"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down -t 0 --remove-orphans"
alias dce="docker compose exec"
alias de="docker exec -it"

### TOOLS ###
alias k="kubectl"

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

# fnm
export PATH=/home/johnnormancapule/.fnm:$PATH
source ~/nvm_scripts/fnm

export OVERCOMMIT_DISABLE=1

PROMPT_COMMAND=${PROMPT_COMMAND:+"$PROMPT_COMMAND; "}'printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"'
precmd() { eval "$PROMPT_COMMAND" }

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# bun completions
[ -s "/home/johnnormancapule/.bun/_bun" ] && source "/home/johnnormancapule/.bun/_bun"

# Bun
export BUN_INSTALL="/home/johnnormancapule/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/openssl@3/bin:$PATH"
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/openssl@3/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/openssl@3/lib/pkgconfig"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# pnpm
export PNPM_HOME="/home/johnnormancapule/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
