#!/bin/bash
# author: Se7en
# url:www.se7ensec.cn

read -p "������Ҫ������ַ��" url
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
	echo "ö���˻���1"
	echo "�������룺2"
	echo "ö�ٴ���©�������3"
	echo "ö�ٴ���©�����⣺4"
	echo "�˳���exit"
	read -p "������ѡ�" str
	case $str in
		1)
			wpscan --url $url --enumerate u
			;;
		2)
			read -p "������ָ���˺ţ�" username
			read -p "�������ֵ�·����" password
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
