#!/bin/sh


cur_path=$(cd `dirname $0`;pwd)
files=$(ls "$cur_path")
for filename in $files
do
if [[ "${filename%%.*}" != "changeMode" && ${filename##*.} == 'sh' ]];then
echo "$cur_path/${filename%%.*}"
fi
done
