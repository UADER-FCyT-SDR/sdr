#!/bin/sh
#*------------------------------------------------------------------------------------------------
#  Universidad Aut  noma de Entre Rios
#  Facultad de Ciencia y Tecnolog  a
#  Ingenier  a de Telecomunicaciones
#  Proyecto de investigaci  n
#  Procesamiento de se  ales mediante cluster
#  Microcluster LAN
#  Script para correr benchmark de calculo de pi
#*------------------------------------------------------------------------------------------------

SIZE=1000000
TOTAL=10

mpirun --oversubscribe --hostfile $HOSTFILE python getpi.py -s $SIZE -t $TOTAL 
