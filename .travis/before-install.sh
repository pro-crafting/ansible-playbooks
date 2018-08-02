#!/usr/bin/env bash
export
chmod +x .travis/*.sh
sudo add-apt-repository ppa:ansible/ansible-2.6 -y
sudo apt-get update
sudo apt-get install -y ansible
export ANSIBLE_HOST_KEY_CHECKING=false

openssl aes-256-cbc -K $encrypted_cfcca50f44cd_key -iv $encrypted_cfcca50f44cd_iv -in .travis\id_rsa_docker.enc -out .travis\id_rsa_docker -d
chmod 0400 .travis\id_rsa_docker
ssh-add .travis\id_rsa_docker