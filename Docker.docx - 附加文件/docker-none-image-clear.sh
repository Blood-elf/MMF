#!/bin/bash

echo "please input command num : 0 test,1 stop container,2 rm container,3 rmi none images"
read command

#测试指令
if test $command -eq 0
then
	echo "Test command success !" 

#批量停止容器指令
elif test $command -eq 1
then
	docker ps -a | grep "Exited" | awk 'pring $1}' | xargs docker stop
	
#批量删除退出容器指令
elif test $command -eq 2
then
	docker ps -a | grep "Exited" | awk 'print $1}' | xargs docker rm
	
#批量删除版本标签为none的镜像
elif test $command -eq 3
then
	docker images | grep none | awk '{print $3}' | xargs docker rmi
else
	echo "command num is error !"
fi

