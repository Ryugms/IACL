#!/bin/bash

echo "Removendo usuários" 

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "removendo os grupos"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC


echo "Iniciando remoção dos diretorios e arquivos"

rm -r -f /publico
rm -r -f /adm
rm -r -f /ven
rm -r -f /sec
