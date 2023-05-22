#!/bin/bash
PROJ_DIRS=(
  /mnt/e/Dropbox/Work/dot_files
  /mnt/e/Dropbox/Work/Personal
  /mnt/e/Dropbox/Work/Books
  /mnt/e/Dropbox/Work/Guidelines
  /mnt/e/Dropbox/Work/Sourcepad2
  /mnt/e/Dropbox/Work/Sourcepad2/sc
  /mnt/e/Dropbox/Work/agile
)

update_git_repo () {
  cd $1;
  cd ..;
  echo "---";
  echo $PWD;
  rm -rf .git/index.lock
  git-town prune-branches;
  git checkout "$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')";
  git fetch;
  git reset --hard origin/"$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')";
}

for path in "${PROJ_DIRS[@]}"; do
  for dir in $(find $path -maxdepth 2 -type d -name .git); do
    update_git_repo $dir
  done
done
