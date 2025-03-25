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

useradd carlos -c "Carlos Alberto" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd maria -c "Mari Antonieta" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd joao -c "João Paulo" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd debora -c "Debora Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana Moreira" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd josefina -c "Josefina Pereir" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amnada Silva" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogerio da Cunha" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo  "Finalizado."
