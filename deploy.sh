#!/bin/bash
#
# bg7 website deploy script
#
set -e -x
sitepath=$HOME/bio4j.github.com/
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

cd $sitepath
git checkout source
git pull origin source
bash -l -c 'rake generate'
bash -l -c 'rake deploy'

