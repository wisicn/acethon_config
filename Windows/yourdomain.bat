@echo off
wget -q -o tmplog.txt  --timeout=0 --wait=5 --tries=400 --background -S -O - http://freedns.afraid.org/dynamic/update.php?YOURSTRING
timeout 1 > NUL
del tmplog.txt
