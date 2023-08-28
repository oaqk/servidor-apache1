#!/bin/bash
#usuario root. por qualquer outro usuário, use sudo
#para executar, verifique se o arquivo tem a permissão necessária

echo "> atualizando o servidor"

apt-get update
apt-get upgrade -y

echo "> instalando o apache"

apt-get install apache2 -y
apt-get install unzip -y

echo "> carregando aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "> subindo aplicação"

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

