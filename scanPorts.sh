#!/bin/bash

# Funcion para forzar la salida del script evitando que se cuelge la shell.

function ctrl_c () {

	echo -e \n
	echo "[!] Saliendo..." ; echo
	sleep 1
	exit 1
}

trap ctrl_c INT


echo ;

if test $# -ne 1
then
        echo "[!] Ayuda: $0 IP/Nombre de dominio" ; echo
        exit 2

fi

# Escaneo de puertos por el protocolo TCP


echo "[+] Escaneando todo el rango de puertos de $1"

for port in {1..65535}
do
	timeout 1 bash -c  "echo "" > /dev/tcp/$1/$port" 2>/dev/null && echo -e "\n[+] Puerto $port abierto"

done

# Fin del programa

exit 0
