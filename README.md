iota-node
=========

## Requirements

Dockerized IOTA full node

    docker pull bluedigits/iota-node

## Install

    docker build -t iota-node .

## Run

    docker run -d -p 14265:14265 -e "NEIGHBORS=udp://neighbor_1 udp://neighbor_2" --name iota-node iota-node
