#!/bin/bash

timeout 1 ping -c 1 $1 &>/dev/null

if test $? -ne 0 ; then

        echo ;
        echo -e "[!] Ayuda: bash $0 <Direccion IO/Nombre de dominio> \n"
        exit 1

elif test $# -ne 1 ; then

        echo -e "[!] Ayuda: bash $0 <Direccion IP/Nombre de dominio> \n"
        exit 2

fi


function ctrl_c () {

        echo ;
        echo -e  "[!] Saliendo... \n"
        sleep 1
        exit 3
}

trap ctrl_c INT


echo ;

echo -e "[+] Escaneando todo el rango de puertos de $1 \n"


for port in {1..65535} ; do

        timeout 1 bash -c "echo "" > /dev/tcp/$1/$port 2>/dev/null" && echo -e "[+] Puerto $port abierto \n"


done


exit 0
