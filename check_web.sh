#! /bin/sh

srcdir="/var/www/html/opensitesolutions.com"
scanfile=`md5sum $srcdir/tag.html | aek '{print $1}'`

echo $scanfile
