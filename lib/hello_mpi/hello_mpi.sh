#!/bin/sh
#*------------------------------------------------------------------------------------------------
#  Universidad Aut  noma de Entre Rios
#  Facultad de Ciencia y Tecnolog  a
#  Ingenier  a de Telecomunicaciones
#  Proyecto de investigaci  n
#  Procesamiento de se  ales mediante cluster
#  Microcluster LAN
#  Script para verificar los nodos utilizados por el cluster
#*------------------------------------------------------------------------------------------------
HELLO_MPI_PATH=$CLUSTERFS"/sdr/lib/hello_mpi"
O="hello_mpi"
CC=$O".c"

mpicc -o $HELLO_MPI_PATH/$O $HELLO_MPI_PATH/$CC
mpirun --hostfile $HOSTFILE --oversubscribe $HELLO_MPI_PATH/$O
