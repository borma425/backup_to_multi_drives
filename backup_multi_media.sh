#!/bin/sh

copyFrom=(

#$HOME/Desktop/EnglishWords.txt

$HOME/Desktop/my-folder

)



pastTO=(
# add your multi folders to past there

/media/borma/sfdsfdsfdsf/Users/Yehia2022/Desktop/LinuxBorma_Backup

$HOME/Desktop/OldBackup/

)






function backup() {



for to in "${pastTO[@]}"; do


for from in "${copyFrom[@]}"; do

sudo rsync -a --info=progress2 --no-i-r "$from" "$to" 

done



echo "Done Copy to $to"


done




}

backup


