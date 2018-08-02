#!/usr/bin/env bash
if [ "$TRAVIS_EVENT_TYPE" = 'cron' ]; then
    ansible-playbook -i inventory/staging common-docker-swarm.yml --tags deploy,rjc
fi