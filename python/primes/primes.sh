#!/bin/sh
#*------------------------------------------------------------------------------------------------
#  Universidad Aut  noma de Entre Rios
#  Facultad de Ciencia y Tecnolog  a
#  Ingenier  a de Telecomunicaciones
#  Proyecto de investigaci  n
#  Procesamiento de se  ales mediante cluster
#  Microcluster LAN
#  Script para correr benchmark de calculo de numeros primos
#*------------------------------------------------------------------------------------------------

LOWER=1
UPPER=100000
SLICE=10
mpirun --oversubscribe --hostfile $HOSTFILE python primes.py -l $LOWER -u $UPPER -s $SLICE 
