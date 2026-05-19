#!/bin/bash

ips="lista.txt"
reporte="reporte.txt"
usuario="ovtorralva"
pssw="mainazir19"

echo "Reporte Se desglosan los servidores que rengan php info " > $reporte
echo "======================================================" >> $reporte

for ip in $(cat $ips)
do 
    echo "Revisando ip $ip . . ."
    echo "****************************" >> $reporte
    echo "$ip" >> $reporte
    

done