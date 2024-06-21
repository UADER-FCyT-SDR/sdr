#!/bin/sh

CLUSTERFS="/clusterfs"
SCRIPT=$CLUSTERFS/"scripts"
MPI4PY=$CLUSTERFS/"mpi4py"
#*---- Continuar con instalación del cluster utilizando recursos en /clusterfs
#*---- Instalar OpenMPI y ambientes relacionados

#*---- Instalar OpenMPI y recursos de desarrollo

cd $SCRIPT
$SCRIPT/cexec.sh "sudo apt-get install gcc make git gdb  -y "
$SCRIPT/cexec.sh "sudo apt-get update && sudo apt-get install openmpi-bin openmpi-common libopenmpi3 -y"
$SCRIPT/cexec.sh "sudo apt-get install mpi-default-dev   -y "

#*--- Instalar ambiente mpi4py
$SCRIPT/cexec.sh "sudo apt-get install python3-mpi4py -y"

#*--- Copiar recursos de soporte mpi4py
cd $MPI4PY
git clone https://github.com/akkornel/mpi4py.git
cp ./mpi4py/*.py .

#*---
echo "***************************************"
echo "*            ATENCION                 *"
echo "***************************************"
echo " "
echo "Verificar y configurar el nodo"
echo "agregar al archivo hostfile"

