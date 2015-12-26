#! /bin/sh -x

# Created December 26, 2015
# Script to backup Web directory to Rsync.net
# Created by Clarence Mills cmills@opensitesolutions.com
# Open Source license
# Relies on PKI keys installed on both servers

user=17847
server=17847@ch-s011.rsync.net

case $1 in

backup)
	#Backkup to remote backup server
	echo "Backing up Web directory"
	rsync -arvz --delete /var/www/html/* $name@$server://data1/home/17847/web_sites/
	#rsync -arvz --delete /var/www/html/* 17847@ch-s011.rsync.net://data1/home/17847/web_sites/
	;;

restore)
	# Restore from Remote server
	echo "Restoring Web directory"
	rsync -avz $name@$server://data1/home/17847/web_sites/ /var/www/html/ 
	;;
list)
	# List remote directories on backup server
	echo "listing remote ...."
	ssh 17847@ch-s011.rsync.net ls -la
	;;

*)	echo "usage: sync.sh  backup | restore | list"
;;

esac
