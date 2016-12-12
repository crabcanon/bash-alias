alias la='ls -A'

alias ll='ls -l'

alias desk='cd ~/Desktop'

alias docs='cd ~/Documents'

alias trash='rm -rf ~/.Trash'

alias up='cd ..'

makeAndCd() {
  mkdir $1
  cd $1
}

alias mc=makeAndCd

alias c='clear'

grepHistory() {
  history | grep $1
}

alias his=grepHistory

alias npmi='npm init'

alias npmin='npm install'

alias npms='npm start'

alias npmt='npm run test'

alias npmb='npm run build'

alias giti='git init'

gitAddRemote() {
  git remote add origin $1
}

alias gitar=gitAddRemote

alias gita='git add .'

gitCommit() {
  git commit -m $1
}

alias gitc=gitCommit

gitPush() {
  git push origin $1
}

alias gitpush=gitPush

gitCheckout() {
  git checkout -b $1
}

alias gitcheckout=gitCheckout

gitMerge() {
  git merge --no-ff $1
}

alias gitm=gitMerge

gitPull() {
  git pull origin $1
}

alias gitpull=gitPull

githubNewFiles() {
  echo '# Introduction' >> README.md
  touch .gitignore
  git init
  git remote add origin $1
  git pull origin master
  git add .
  git commit -m 'First commit'
  git push -u origin master
}

alias githubnewfiles=githubNewFiles

githubNew() {
  git init
  git remote add origin $1
  git pull origin master
  git add .
  git commit -m 'First commit'
  git push -u origin master
}

alias githubnew=githubNew