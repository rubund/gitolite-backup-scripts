#!/bin/sh

rsync -a -v -u /var/lib/gitolite3/ /var/lib/backup-gitolite/gitolite3


cd /var/lib/backup-gitolite/gitolite3

git add *
git add */.*
git commit -m "Regular commit"

git push origin master
