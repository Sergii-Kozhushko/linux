  GNU nano 2.9.8                                                                       sleeper.sh

#!/bin/bash


#пишу 10 раз с интервалом в 5 с дату
for ((i=1;i<10;i++))
do
#echo $i
j=$(ps -aux |  wc -l);
s=$(date +"%H:%M:%S $j");
echo $s;
#echo $j;
sleep 5
done

#пишу инфо о процессоре
lscpu > info.txt
echo "_____________________" >> info.txt
#пишу строку сназванием ОС
cat /etc/os-release | grep ^NAME >> info.txt
echo "_____________________" >> info.txt
#оставляю только слово Amazon
cat /etc/os-release | grep ^NAME | sed 's/NAME="//' | sed 's/ Linux"//g' - >> info.txt

for ((i=50;i<101;i++))
do
touch $i.txt
done
