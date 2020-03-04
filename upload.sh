#!/bin/sh

#路径配置
cur_path=$(cd `dirname $0`;pwd)
work_path=${HOME}"/library/developer/xcode/userdata"
work_name='/codeSnippets'

echo '本地路径:'$work_path$work_name

#从本地同步
if [ -d $work_path$work_name ];then
echo "从本地同步代码片段"
cp -r "$work_path$work_name/." "$cur_path$work_name/"
else
echo "未发现本地代码片段"
fi

