#!/bin/bash
# author: Se7en
# url:www.se7ensec.cn

read -p "请输入要检测的网址：" url
while [[ $str != 'exit' ]]
do

	echo "+---------------------------------------------------------------+ "
	echo "| Talk is cheap , Show me the code.       /\                    | "
	echo "| ________  __          __               (@@) /)                | "   
	echo "|/\_____  \/\ \      __/\ \__           //  |/                  | "   
	echo "|\/___//'/'\ \ \____/\_\ \ ,_\          //H4ck1ng               | "  
	echo "|    //'/'  \ \ '__'\/\ \ \ \/          //F0r                   | "
	echo "|   //'/'    \ \ \_\ \ \ \ \ \_         //Fun!                  | "
	echo  -e "|  /\_/'      \ \_,__/\ \_\ \__\        [\033[5;31mFool-WPScan.sh\033[0m]        | " 
	echo "|  \//'        \/___/  \/_/\/__/        HTTPS://WWW.SE7ENSEC.CN | "
	echo "+---------------------------------------------------------------+ "
	echo "枚举账户：1"
	echo "爆破密码：2"
	echo "枚举存在漏洞插件：3"
	echo "枚举存在漏洞主题：4"
	echo "退出：exit"
	read -p "请输入选项：" str
	case $str in
		1)
			wpscan --url $url --enumerate u
			;;
		2)
			read -p "请输入指定账号：" username
			read -p "请输入字典路径：" password
			wpscan --url $url  -P $password -U $username
			;;
		3)
			wpscan --url $url --enumerate vp
			;;
		4)
			wpscan --url $url --enumerate vt
			;;
	esac
done
unset url
unset str
