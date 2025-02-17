#!/bin/bash
for i in $(cat $1)
do
cat /etc/passwd | grep $i 2> /dev/null;
if [ $? -eq 0 ]; then
sudo userdel -r $i;
echo ”user $i exist and deleted”;
else
echo ”user $i does not exist”;
fi
done

