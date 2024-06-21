#!/bin/sh

NODE="sdr-s04"

SCRIPT="/clusterfs/sdr/scripts"
cd $SCRIPT
#*----  Copy latest version of critical files

$SCRIPT/ccp.sh -n $NODE '/etc/hosts' "/home/pi/hosts"
$SCRIPT/cexec.sh -n $NODE "sudo mv /home/pi/hosts /etc/hosts" 

$SCRIPT/ccp.sh -n $NODE '/etc/resolv.conf' "/home/pi/resolv.conf"
$SCRIPT/cexec.sh -n $NODE "sudo mv /home/pi/resolv.conf /etc/resolv.conf" 
$SCRIPT/cexec.sh -n $NODE "ping -c1 www.hotmail.com"

#*---- Install NTP service
$SCRIPT/cexec.sh -n $NODE "sudo apt-get update && sudo apt-get install ntp ntpdate sysstat stress git -y"

#*---- Install other packages needed
$SCRIPT/cexec.sh -n $NODE "sudo apt-get install nfs-common -y"
$SCRIPT/cexec.sh -n $NODE "sudo mkdir /clusterfs"
$SCRIPT/cexec.sh -n $NODE "sudo chmod -R 777 /clusterfs"

echo "**********************************"
echo "*          ATENCION              *"
echo "**********************************"
echo " "
echo "Realizar manualmente las siguientes sentencias haciendo ssh pi@$NODE"
echo "sudo nano /etc/fstab   (agregar al final la siguiente linea)"
echo "<master node ip\>:/clusterfs    /clusterfs    nfs    defaults   0 0"
echo "luego "
echo " "
echo "sudo systemctl daemon-reload"
echo "sudo mount -a"
echo " "
echo "Hacer cd /clusterfs y verificar que esté el contenido existente en el"
echo "mismo directorio del nodo base, luego dar"
echo "sudo reboot"
