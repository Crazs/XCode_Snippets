#!/bin/sh

#路径配置
cur_path=$(cd `dirname $0`;pwd)
work_path="~/library/developer/xcode/userdata"
work_name='/CodeSnippets'
curdate="`date +%Y_%m_%d_%H_%M_%S`";

#备份本地snippets
if [ -d $work_path$work_name ];then
echo "备份本地代码片段"
cp -r $work_path$work_name $cur_path$work_name'_'$curdate
else
echo "创建本地代码片段"
mkdir $work_path$work_name
fi

#向本地添加
cp -r $cur_path$work_name$'/.' $work_path$work_name'/'

