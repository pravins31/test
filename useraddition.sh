#!/bin/bash
for i in $(cat $1)
do
cat /etc/passwd | grep $i 2> /dev/null;
if [ $? -eq 0 ]; then
echo ”user $i elready exist”;
else
sudo useradd $i;
echo ”user $i added”;
fi
done

