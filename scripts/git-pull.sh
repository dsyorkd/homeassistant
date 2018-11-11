#!/bin/bash

######################################
## This script pulls my selected    ##
## files from my Github repo, and   ##
## treats them as the 'master' copy ##
######################################

cd /storage/apps/homeassistant/
git checkout master
git branch -D upload
git fetch origin master
git reset --hard origin/master
docker restart home-assistant