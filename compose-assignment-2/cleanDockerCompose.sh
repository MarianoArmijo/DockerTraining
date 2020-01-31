#!/bin/bash

function stopCompose() {
  if [ -s "docker-compose.yml" ]; then
    docker-compose down -v
    echo -e "Volumes cleaned"
  else
    echo -e "Error file \"docker-compose.yml\" not in path $(pwd)"
  fi
}

function main() {
  stopCompose
}

main
