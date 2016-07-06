dversion() {
  echo 0.1.7
}

dupdate() {
  rm $HOME/.docker-shortcuts/docker-shortcuts.sh
  curl -o $HOME/.docker-shortcuts/docker-shortcuts.sh -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/jbclaramonte/docker-shortcuts/master/docker-shortcuts.sh
  source $HOME/.docker-shortcuts/docker-shortcuts.sh
}

useDockerMachineEnv() {
	eval "$(docker-machine env $1)"
}

listDockerMachines() {
	docker-machine ls
}

connectDockerBash() {
        docker exec -it $1 bash
}

dockerPs() {
	docker ps $@
}

dockerLogs() {
        docker logs $1
}

dockerTail() {
	containerId=$1
	historicSize=$2
        if [ -n "$historicSize" ]
        then
		docker logs --tail="$historicSize" -f  $containerId
	else
		docker logs --tail="10" -f  $containerId
        fi
}

dockerStop() {
	docker stop $1
}

dockerRestart() {
	docker restart $1
}

dockerHelp() {
        echo "Raccourcis docker / docker-machine:

dhelp : pour ré-afficher ces raccourcis

*** docker ***

Commande                        | Commentaire
dlogs <Container ID>             | equivalent à: docker logs <Container ID>
dtail <Ctner ID> <historic size>| equivalent à: docker logs -tail='<historic size>' -f <Ctner ID>
dstop <Container ID>             | equivalent à: docker stop <Container ID>
drestart <Container ID>          | equivalent à: docker restart <Container ID>
dconnect <Container ID>          | equivalent à: docker exec -it <Container ID> bash
dps <options>                   | equivalent à: docker ps

*** docker-machine ***
Commande                        | Commentaire
use <env>                       | equivalent à: eval docker-machine env
list                            | equivalent à: docker-machine ls
"
}

alias use=useDockerMachineEnv
alias list=listDockerMachines
alias dconnect=connectDockerBash
alias dps=dockerPs
alias dlogs=dockerLogs
alias dtail=dockerTail
alias dstop=dockerStop
alias drestart=dockerRestart
alias dhelp=dockerHelp

