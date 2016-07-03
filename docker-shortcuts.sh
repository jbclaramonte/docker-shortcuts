dversion() {
  echo 0.1.5
}

dupdate() {
  rm $HOME/.docker-shortcuts/docker-shortcuts.sh
  curl -o $HOME/.docker-shortcuts/docker-shortcuts.sh -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/jbclaramonte/docker-shortcuts/master/docker-shortcuts.sh &
}
