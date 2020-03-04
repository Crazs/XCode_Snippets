#!/bin/sh

#路径配置
cur_path=$(cd `dirname $0`;pwd)
cur_backup=$cur_path"/backup"
work_path=${HOME}"/library/developer/xcode/userdata"
work_name='/CodeSnippets'
curdate="`date +%Y_%m_%d_%H_%M_%S`";

#备份本地snippets
if [ -d $work_path$work_name ];then
echo "备份本地代码片段"
if [ ! -d $cur_backup ];then
mkdir $cur_backup
fi
cp -r $work_path$work_name $cur_backup$work_name'_'$curdate
else
echo "创建本地代码片段"
mkdir $work_path$work_name
fi

#向本地添加
cp -r $cur_path$work_name$'/.' $work_path$work_name'/'

