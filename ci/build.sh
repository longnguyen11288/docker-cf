#!/bin/bash

CF_CLI_VERSION=$(cat cf-cli-release/version)

sudo apt-get install curl

url="https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CF_CLI_VERSION}&source=docker-cf"
curl -L -o packaging/cf-${CF_CLI_VERSION}-linux-x86_64.tgz ${url}

tar xzf packaging/cf-${CF_CLI_VERSION}-linux-x86_64.tgz -C bin/
