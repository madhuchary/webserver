#!/bin/bash
grep [A-Z] index.html
if [ $? -eq 0 ]
then
	echo "success"
	scp index.html ubuntu@35.167.52.179:/tmp
	ssh ubuntu@35.167.52.179 sudo /bin/sh -c 'cp /tmp/index.html /var/www/html/index.html'
	exit 0
else
	echo "Please enter only CAPS"
	exit 1
fi
