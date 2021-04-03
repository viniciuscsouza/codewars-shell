#!/bin/sh
# Challenge https://www.codewars.com/kata/554e4a2f232cdd87d9000038/
#
# Enviei o 1º parâmetro para o sed y traduzir cada caractere
echo $1 | sed "y/ATCG/TAGC/"
