#!/bin/bash
n=$1
#code me
# Testa se o valor de n é maior que 0
if [[ "10#$n" -gt 0 ]]
then
# Converte para binário, remove os zeros e newline, conta caracteres
    echo "obase=2;$n" | bc | tr -d "0" | tr -d "\n" | wc -m
fi
# Se n for igual a zero, retorna zero
[[ "10#$n" -eq 0 ]] && echo "0"
