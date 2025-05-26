#!/usr/bin/env bash

### SCRIPT PARA QUE O ESQUEMA DE CORES DO PC ALTERE JUNTAMENTE COM O WALLPAPER ###
### FEV/2025, POR CRISTIAN SOUSA, AKA, KNEESHE

export wal_path=$HOME/Imagens/wallppr #cria uma var com o caminho para a pasta
 wal_jpg="wal -i $wal_path/*.jpg" #var com o comando especificando o tipo de arquivo #var com o comando especificando o tipo de arquivo #var com o comando especificando o tipo de arquivo
 wal_png="wal -i $wal_path/*.png"

#esse bloco é puramente para limpar a pasta com as imagens mais antigas, evitando, assim, conflito de arquivos
if [ -f $wal_path/*.* ]; then
	find $wal_path -mmin +3 -type f -delete
#elif [ -f $wal_path/*.png ]; then
#	find $wal_path -min +3 -type f -delete
else
	echo "Erro! Não há arquivos"
fi

#esse bloco gera o esquema de cores e muda o wallpaper
if [ -f $wal_path/*.jpg ]; then                                      
	$wal_jpg && swww img $wal_path/*.jpg
elif [ -f $wal_path/*.png ]; then                                    
	$wal_png && swww img $wal_path/*.png
else                                                                 
	echo "Não há arquivos aqui"                                  
fi                           

#esse bloco exporta o arquivo de css criado pelo pywal para a pasta de config do waybar e trata dela, removendo caracteres especiais,
#bem como adicionando o texto necessário para que o waybar compreenda o esquema de cores
if [ -f $HOME/.cache/wal/colors.css ]; then #verifica se o arquivo existe
	echo  > $HOME/.config/waybar/cores.css && cat $HOME/.cache/wal/colors.css >> $HOME/.config/waybar/cores.css && sed -i -e '$d' -e '/:root/d' -e '/--wallpaper/d' -e 's/[:]//g' -e 's/--*/@define-color /g' $HOME/.config/waybar/cores.css #substitui o conteudo
else
	echo "Arquivo inexistente"
fi

killall waybar && waybar & #mata e reinicia o waybar para que as mudanças tenham efeito
