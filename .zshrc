# Path to your oh-my-zsh installation.
export ZSH=/Users/johnnormancapule/.oh-my-zsh
ZSH_THEME="wezm"

plugins=(
  git
  macos
  emacs
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
                    nvim +PluginUpdate +qall;
                    (cd $HOME/.emacs.d && git pull);
                    omz update;
                   '
alias update_repos='(cd $HOME/Dropbox/Work && ./update-all.sh);'

### COMMANDS ###
alias mps="iex -S mix phx.server"
alias vi="'vim'"
alias vim="nvim"
alias py="python"
alias ec="open -a /Applications/Emacs.app"
alias ect="emacsclient -t -c -a ''"
alias reset_ssh='eval `ssh-agent -s`:
                 ssh-add -D;
                 ssh-agent;
                 ssh-add
                '

### DOCKER ###
alias de="docker exec -it"
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
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

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export EDITOR="nvim"

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LC_ALL=en_US.UTF-8
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. /usr/local/Cellar/asdf/0.8.1_1/asdf.sh
. /usr/local/Cellar/asdf/0.8.1_1/etc/bash_completion.d/asdf.bash
. /usr/local/etc/profile.d/z.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
source $HOME/.zsh_scripts/fnm
