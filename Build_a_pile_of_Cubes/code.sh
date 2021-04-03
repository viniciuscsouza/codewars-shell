#!/bin/bash

find_nb () {
    # Constantes 
    readonly VOLUME_TOTAL=$1
    readonly POTENCIA=3
    # Variáveis
    pilha_de_cubo=1
    volume_do_cubo=0
    volume_adicional=0
    
    if [[ "10#$volume_do_cubo" -eq "10#$VOLUME_TOTAL" ]]
    then
        echo "$pilha_de_cubo"
    else
        i=0
        while [[ "10#$volume_do_cubo" -lt "10#$VOLUME_TOTAL" ]]
        do
        volume_adicional=$(( $(("$i" + 1))**"$POTENCIA" ))
        volume_do_cubo=$(( "10#$volume_do_cubo" + "10#$volume_adicional" ))
        ((++i))
        [[ "10#$volume_do_cubo" -eq "10#$VOLUME_TOTAL" ]] && echo "$pilha_de_cubo" && exit
        ((++pilha_de_cubo))
        done
        echo '-1'
    fi
}
find_nb "$1"
