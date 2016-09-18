#!/bin/sh

WORKDIR=`pwd`
LOGFILENAME=`date  +%Y-%m-%d-%H:%M:%S.log`

git pull

#./sync-with-github-and-gitlab.sh > ./logs/`date  +%Y-%m-%d-%H:%M:%S.log` 2>&1
${WORKDIR}/sync-with-github-and-gitlab.sh > ./logs/${LOGFILENAME} 2>&1

git add .

git commit -m "${LOGFILENAME} generated."

git push origin master
