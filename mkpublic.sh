#!/bin/bash

#creates parameter 1 with variable name file
file=$1

#creates a variable with the nick of the signed in user
user=$(whoami)

#if the public folder exsists
if [ -d /var/www/user/$user/ ];
then
cp $file /var/www/user/$user/
echo "http://user.WEBSITE.se/"$user"/"$file
else
mkdir /var/www/user/$user/
cp $file /var/www/user/$user/
echo "http://user.WEBSITE.se/"$user"/"$file
fi