#!/bin/bash
b=10
if [ $b -ne 20 ]
then
	echo "Disk is not 20GB so not proceeding"
	exit 2
fi
