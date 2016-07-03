mkdir $HOME/.docker-shortcuts
curl -o $HOME/.docker-shortcuts/docker-shortcuts.sh https://raw.githubusercontent.com/jbclaramonte/docker-shortcuts/master/docker-shortcuts.sh

echo 'source $HOME/.docker-shortcuts/docker-shortcuts.sh' >> $HOME/.bash_profile
