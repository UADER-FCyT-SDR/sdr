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

mpirun --hostfile $HOSTFILE --oversubscribe python /clusterfs/sdr/python/mpi4/mpi4.py
