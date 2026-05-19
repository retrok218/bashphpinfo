#!/bin/bash

ips="lista.txt"
reporte="reporte.txt"
usuario="ovtorralva"
pssw="mainazir19"

echo "Reporte Se desglosan los servidores que tengan php info " > $reporte
echo "======================================================" >> $reporte

for ip in $(cat $ips)
do 
    echo "Revisando ip $ip . . ."
    echo "****************************" >> $reporte
    echo "Servidor: $ip" >> $reporte
    
    resultado=$(sshpass -p "$pssw" ssh \
    -o StrictHostKeyChecking=no \
    -o ConnectTimeout=5 \
    $usuario@$ip \
    "find /var/www/html/ -type f | grep -Ei 'info\.php|phpinfo'")

    

    echo "Servidor: $ip" >> $reporte

    if [ -n "$resultado" ]; then

        echo "se encontro :" >> $reporte

        echo "$resultado" >> $reporte

    else

    echo "no se encontro info.php p derivados" >> $reporte

    fi

    echo " -----------------------------------------------------" >> $reporte


done