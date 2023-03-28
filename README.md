# scanPorts
Un escáner de puertos simple escrito en Bash.

Este script se basa en usar el pseudo dispositivo especial /dev/tcp/ para comprobar puertos abiertos en una máquina remota.

Asigna al script permisos de ejecución:

    chmod u+x scanPorts.sh

Uso:

    ./scanPorts.sh <Dirección IP o nombre de dominio>

Nota: Este script solamente escanea puertos por medio del protocolo TCP, no permite escaneo de puertos por otros protocolos como UDP, SCTP... Etc.
