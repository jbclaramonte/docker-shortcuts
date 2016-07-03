dversion() {
  echo 0.1
}

dupdate() {
  curl -o $HOME/.docker-shortcuts/docker-shortcuts.sh https://raw.githubusercontent.com/jbclaramonte/docker-shortcuts/master/docker-shortcuts.sh
}
