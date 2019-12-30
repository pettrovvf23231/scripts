#!/bin/bash

echo "Enter file name which you want to check"
read name

if [ -f "$name" ]
then
      echo "$name file already exist"
else
     echo "$name file does not exits"
     while true; do
      read -p "Do you want to create $name file yes or no ?" yn
       case $yn in
        [Yy]* ) touch $name;echo "$name file has been created"; break;;
        [Nn]* ) echo "$name file was not created";exit;;
        * ) echo "Please answer yes or no.";;
       esac
     done
fi
