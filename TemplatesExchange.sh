#!/bin/sh

#路径配置
cur_path=$(cd `dirname $0`;pwd)
cur_backup=$cur_path'/backup'
target_path='/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/Source/Cocoa Touch Class.xctemplate'
work_name='/Templates'
curdate="`date +%Y_%m_%d_%H_%M_%S`"

#创建备份文件夹
if [ ! -d $cur_backup ];then
mkdir $cur_backup
fi
backup=$cur_backup$work_name'_'$curdate
echo '创建备份文件夹:'$backup
mkdir $backup

#便利需要替换的文件
files=$(ls "$cur_path$work_name")
for filename in $files
do

#备份文件
cp -r "$target_path/$filename" "$backup/$filename"
echo '备份文件:'$filename

#替换文件
sudo cp -r "$cur_path$work_name/$filename" "$target_path/"
echo '替换文件:'$filename

done

##打开文件件手动替换
#open "$target_path"
#open "$cur_path$work_name"
