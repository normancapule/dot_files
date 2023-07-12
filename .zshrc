# Path to your oh-my-zsh installation.
export ZSH=/Users/johnnormancapule/.oh-my-zsh
ZSH_THEME="wezm"

plugins=(
  git
  macos
)
source $ZSH/oh-my-zsh.sh
HISTFILE="${HOME}/.zsh_history"
setopt SHARE_HISTORY

### ALIASES ###
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
alias ngrok="$HOME/Downloads/ngrok"
alias rmt="rmtrash"
alias update_tools='brew unlink vim;
                    brew update;
                    brew upgrade;
                    brew link --overwrite vim;
                    brew cleanup;
                    asdf plugin-update --all;
                    asdf update;
                    nvim +PlugUpdate +qall;
                    omz update;
                   '
alias update_repos='(cd $HOME/Dropbox/Work && ./update-all.sh);'

### COMMANDS ###
alias mps="iex -S mix phx.server"
alias vi="'vim'"
alias vim="nvim"
alias py="python"
alias ec="open -a /Applications/Emacs.app"
alias reset_ssh='eval `ssh-agent -s`:
                 ssh-add -D;
                 ssh-agent;
                 ssh-add
                '
alias k="kubectl"

### DOCKER ###
alias de="docker exec -it"
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
alias dce="docker-compose exec"
alias dcre="docker-compose run --rm --entrypoint"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down"
# [D]ocker [r]un as a [s]erver
alias drs="docker-compose run --rm --service-ports web"

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

export PATH="$HOME/.asdf/shims:$PATH"
export EDITOR="nvim"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LC_ALL=en_US.UTF-8
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. $(brew --prefix asdf)/libexec/asdf.sh
eval "$(fnm env --use-on-cd)"
. $HOMEBREW_PREFIX/etc/profile.d/z.sh
