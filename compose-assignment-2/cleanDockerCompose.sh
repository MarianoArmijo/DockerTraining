#!/bin/bash

function stopCompose() {
  docker-compose down
}
function cleanVolumesInused() {
  docker volume prune -f
}


function main() {
  if [ -s "docker-compose.yml" ]; then
    stopCompose
    cleanVolumesInused
    echo -e "Volumes cleaned"
  else  
    echo -e "Error file \"docker-compose.yml\" not in path $(pwd)"
  fi


}

main
