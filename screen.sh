#!/bin/bash

# Variável pra contagem a cada 2 indices
incremento=2

# Variável que guarda o valor do indice final
indiceFinal=74


# Cada execução do laço baixa 2 imagens
for (( i = 2 ; i <= $indiceFinal; i += $incremento ));do
    # Clica no console do navegador
    xte 'mousemove 1200 450'
    sleep 2
    xte 'mouseclick 1'

    # Tirando screenshot e numerando a página
    xte "str :screenshot --selector .p$i $i.png"
    xte 'key Return'
    sleep 2

    # Tirando screenshot e numerando a 2 página
    xte "str :screenshot --selector .p$(($i+1)) $(($i+1)).png"
    xte 'key Return'
    sleep 2

    # Paginando
    xte 'mousemove 936 450'
    sleep 1
    xte 'mouseclick 1'
    sleep 1
done