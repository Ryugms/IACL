#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."


useradd -m -c "Carlos Alberto" -s /bin/bash -p $(openssl passwd -6 Senha123) carlos -G GRP_ADM
useradd maria -m -c "Maria Antonieta" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João Pedro" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Moreira" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd josefina -c "Josefina Pereira" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Cunha" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo  "Finalizado."
