# Path to your oh-my-zsh installation.
export ZSH=/Users/johnnormancapule/.oh-my-zsh
ZSH_THEME="wezm"

plugins=(
  git
  osx
  emacs
)
source $ZSH/oh-my-zsh.sh

### ALIASES ###
alias ngrok="$HOME/Downloads/ngrok"
alias rmt="rmtrash"
alias update_tools='brew unlink macvim;
                    brew unlink vim;
                    brew update;
                    brew upgrade;
                    brew link --overwrite vim;
                    brew link --overwrite macvim;
                    brew cleanup;
                    omz update;
                    asdf plugin-update --all;
                    asdf update;
                    nvim +PluginUpdate +qall;
                    (cd $HOME/.emacs.d && git pull);
                   '
alias update_repos='(cd $HOME/Dropbox/Work && ./update-all.sh);'

### COMMANDS ###
alias mps="iex -S mix phx.server"
# alias vi="mvim -v"
alias vi="'vim'"
alias vim="nvim"
alias py="python"
alias ec="open -a /Applications/Emacs.app"
alias ect="emacsclient -t -c -a ''"

### DOCKER ###
alias de="docker exec -it"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcd="docker-compose down"
# [D]ocker [r]un as a task
alias dr="docker-compose run --rm web"
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

### RUBY ###
alias be="bundle exec"

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export EDITOR="nvim"

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LC_ALL=en_US.UTF-8
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. /usr/local/Cellar/asdf/0.7.8/asdf.sh
. /usr/local/etc/profile.d/z.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
