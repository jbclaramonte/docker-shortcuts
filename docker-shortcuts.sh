dversion() {
  echo 0.1.3
}

dupdate() {
  rm $HOME/.docker-shortcuts/docker-shortcuts.sh
  curl -o $HOME/.docker-shortcuts/docker-shortcuts.sh https://raw.githubusercontent.com/jbclaramonte/docker-shortcuts/master/docker-shortcuts.sh &
}
