#!/bin/bash

#Esse trecho é apenas pra passar a primeira execução que gera um erro
xte 'mousemove 3200 200'
sleep 1
xte 'mouseclick 1'

xte "str :screenshot --selector #page"
xte 'key Return'

#Fim

for i in {1..35};do
    #Clica no console do navegador
    xte 'mousemove 3200 200'
    sleep 2
    xte 'mouseclick 1'

    #Tirando screenshot e numerando a página
    xte "str :screenshot --selector #page$i page$i.png"
    xte 'key Return'
    sleep 2

    #Paginando
    xte 'mousemove 2260 140'
    sleep 1
    xte 'mouseclick 1'
    sleep 1
done