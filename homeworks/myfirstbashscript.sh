#! /bin/bash
# Programmed by Sergii Kozhushko, Group 47-48

D1=$(date)
echo "The current date is: $D1"

echo "Hello '$USER'!"

D1=$(pwd)
echo "You are working from directory: $D1"


P1=$(ps -aux |  wc -l)
let "P1 =$P1 - 1"
echo "Current number of all precesses is: $P1"

STR1=$(ps -aux | grep sshd | grep -v grep | wc -l)
echo "Number of 'sshd' processes is: $STR1"

STR2=$(ls -l /etc/passwd | awk '{print $1}')
echo "'/etc/passwd' file permissions are: $STR2"
