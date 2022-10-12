# scanPorts
Un escáner de puertos simple escrito en bash.

Este script se basa en usar el pseudo dispositivo especial /dev/tcp/ para comprobar puertos en una máquina remota.

Uso: bash scanPorts.sh <Dirección IP/Nombre de dominio>

Nota: Este script solamente escanea puertos por medio del protocolo TCP, no permite escaneo de puertos por otros protocolos como UDP, SCTP... Etc.
