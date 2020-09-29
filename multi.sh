#!/bin/sh
if [ $1 -lt 0 -o $1 -gt 9 -o $2 -lt 0 -o $2 -gt 9 ]
then
echo "Wrong input"
exit 0
fi
result=0
for i in $(seq 1 $1)
do
for j in $(seq 1 $2)
do
result=`expr $i \* $j`
printf $i"*"$j"="$result" "
done
printf "\n"
done
exit 0
