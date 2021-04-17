#!/bin/bash
contar(){
	local cuenta
	local fichero
	
	cuenta=0
	for fichero in $1/*
	do
		if [[ -s $fichero ]] && [[ -x $fichero ]]
		then
			(( cuenta++ ))
		fi
	done
	echo "Número de ficheros: $cuenta"
}	
	clear
echo "Script created by Oscar Fortea"
echo -n "AÑade la ruta completa del direcotrio "
read directorio
contar $directorio
exit 20
