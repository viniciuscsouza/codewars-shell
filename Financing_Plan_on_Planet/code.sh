#!/bin/bash
# Challenge: https://www.codewars.com/kata/559ce00b70041bc7b600013d/
# N   SEMANA....0   1   2   3   4
# 0   Sunday    0   0   0   0   0
# 1 - Monday    1   2   0   0   0
# 2 - Tuesday   2   3   4   0   0
# 3 - Wednesday 3   4   5   6   0
# 4 - Thirty    4   5   6   7   8
# 5 - Friday    5   6   7   8   9
# 6 - Saturday  6   7   8   9   10
#
# function finance() => Recebe um inteiro que representa a quantidade
# de dias na semana.
# Começa a guardar dinheiro no dia igual ao dia da semana N+1
# 
# Dinheiro guardado é igual ao índice do dia + o índice da semana
# Se o índice da semana for maior que o indice do dia então não guarda dinheiro
#
# Algoritmo funciona, mas não está eficiente para passar no teste.
# STDERR
# Execution Timed Out (12000 ms)

finance(){
    days_of_the_week=$1
    money_saved=0
    amount=0
    if test "$days_of_the_week" -le 0 
    then
        exit
    else
        week_number=0
        while test "$week_number" -le "$days_of_the_week"
        do
           today=0
            while test "$today" -le "$days_of_the_week"
            do
                money_saved=0
                if test "$today" -le "$week_number"
                then
                    money_saved=`echo "$today+$week_number" | bc`
                fi
                amount=`echo "$amount+$money_saved" | bc`
                ((++today))
            done
            ((++week_number))
        done
        echo "$amount"
    fi
}
finance $1
