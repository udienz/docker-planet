#!/bin/bash

BASEDIR=/home/venus/themes/ubuntu
SRCFEED=https://github.com/ubuntu-id/planet.git

git_clone () {
    git clone https://github.com/ubuntu-id/planet.git $BASEDIR
}

git_pull () {
    cd $BASEDIR
    git pull origin master
}

gen_planet () {
    /usr/bin/python planet.py themes/ubuntu/config.ini
}
if [ -d $BASEDIR ];
then
    echo "directory exist"
    git_pull
    gen_planet
else
    echo "direcory not exist"
    git_clone
    gen_planet
fi
