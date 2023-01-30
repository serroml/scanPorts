#!/bin/bash

function ctrl_c () {

        echo -e  "\n[!] Saliendo... \n \n"
        sleep 1
        exit 1
}


trap ctrl_c INT


timeout 1 ping -c 1 $1 &>/dev/null


if (( $? != 0 )); then

        echo -e "\n[!] La maquina no es accesible \n \n"
        exit 2

elif (( $# != 1 )); then

        echo -e "\n[!] Ayuda: bash $0 <Direccion IP/Nombre de dominio> \n \n"
        exit 3

fi



echo -e "\n[+] Escaneando todo el rango de puertos de $1 \n \n"


for port in {1..65535}; do

        timeout 1 bash -c "echo "" > /dev/tcp/$1/$port" 2>/dev/null && echo -e "[+] Puerto $port abierto \n"


done


exit 0
