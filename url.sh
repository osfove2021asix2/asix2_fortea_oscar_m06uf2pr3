#!/bin/bash

function AÑADE(){
	echo -n "URL: "
	read URL
}

function COMPROBAR(){
	curl --connect-timeout 5 $URL > /dev/null 2>&1
	
	if [[ "$?" -eq 0 ]]; then
		echo "CORRECTA"
	else	
		echo "INCORRECTO"
		exit 1;
	fi	
}	

function NAVEGADOR(){
	echo "Abriendo $URL en el navegador"
	firefox $URL
}

function FUN(){
	AÑADE
	COMPROBAR
	NAVEGADOR
}
FUN
