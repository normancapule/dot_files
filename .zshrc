# Path to your oh-my-zsh installation.
export ZSH=/Users/johnnormancapule/.oh-my-zsh
ZSH_THEME="gnzh"

plugins=(
  git
  osx
  emacs
)
source $ZSH/oh-my-zsh.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

### ALIASES ###
alias ngrok="~/Downloads/ngrok"
alias rmt="rmtrash"
alias update_tools='brew update;
                    brew unlink macvim;
                    brew unlink vim;
                    brew upgrade;
                    brew link --overwrite vim;
                    brew link --overwrite macvim;
                    brew cleanup;
                    upgrade_oh_my_zsh;
                    asdf plugin-update --all;
                    asdf update;
                    nvim +PluginUpdate +qall;
                    (cd $HOME/.emacs.d && git pull);
                   '
alias update_repos='(cd $HOME/Dropbox/Work && ./update-all.sh);'
alias aws="aws2"

### COMMANDS ###
alias mps="iex -S mix phx.server"
alias vi="mvim -v"
alias py="python"
alias ec="open -a /usr/local/Cellar/emacs-plus/26.3/Emacs.app/"
alias ect="emacsclient -t -c -a ''"

### DOCKER ###
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
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

export PGPASSWORD=admin
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH=~/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"

export LC_ALL=en_US.UTF-8
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. /usr/local/etc/profile.d/z.sh
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
