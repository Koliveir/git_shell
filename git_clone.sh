#!/bin/bash
#
# SCRIPT: git.sh
# AUTHOR: Koliveir <->
# DATE: 31/07/2020
# PLATAFORM: Linux/Ubuntu
# PURPOSE: Fazer um clone ou pull de um repositorio do Github
#

clear

read -p "CONTA DO GITHUB: " -e congit
read -p "REPOSITORIO: " -e reposit

if [ -d $reposit ]; then
	git pull https://github.com/$congit/$reposit
	echo "O REPOSITÓRIO "$reposit" FOI ATUALIZADO COM SUCESSO."
	ls $reposit
else 
	git clone https://github.com/$congit/$reposit
	echo "O REPOSITÓRIO "$reposit" FOI BAIXADO NO DIRETÓRIO."
	ls $reposit
fi

exit
