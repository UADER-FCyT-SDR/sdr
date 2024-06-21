#!/bin/sh

CLUSTERFS="/clusterfs"
SCRIPT=$CLUSTERFS/"scripts"
MPI4PY=$CLUSTERFS/"mpi4py"
NODE="sdr-q01"

#*---- Continuar con instalación del cluster utilizando recursos en /clusterfs
#*---- Instalar OpenMPI y ambientes relacionados

#*---- Instalar OpenMPI y recursos de desarrollo

cd $SCRIPT
$SCRIPT/cexec.sh -n $NODE "sudo apt-get update && sudo apt-get install gnuradio xterm -y "
$SCRIPT/cexec.sh -n $NODE "sudo apt-get install gnuradio-dev cmake libspdlog-dev clang-format cmake -y "
$SCRIPT/cexec.sh -n $NODE "sudo apt-get install gnuradio-dev cmake libspdlog-dev clang-format -y "
#*---

sudo mkdir /run/user/1000
sudo chmod 0700 /run/user/1000
echo "***************************************"
echo "*            ATENCION                 *"
echo "***************************************"
echo " "
echo "Verificar y configurar el nodo manualmente"

