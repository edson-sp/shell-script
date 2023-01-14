#!/bin/bash

converte_imagem(){   
cd ~/Downloads/imagens-livros2
if [ ! -d png ]
then
    mkdir png
fi

for imagem in *.jpg
do
    local imagem_s_e=$(ls $imagem | awk -F. '{ print $1 }')
    convert $imagem_s_e.jpg png/$imagem_s_e.png
done 
}

converte_imagem 2>log_de_erro.txt
if [ $? -eq 0 ]
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve uma falha na conversão"
fi 