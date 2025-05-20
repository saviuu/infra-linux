#!/bin/bash

# Grupos
groupadd dev
groupadd design
groupadd suporte

# Usuários
useradd maria -m -s /bin/bash -G dev
useradd joao -m -s /bin/bash -G design
useradd pedro -m -s /bin/bash -G suporte

# Permissões nos diretórios
mkdir /projetos
chown maria:dev /home/maria
chown joao:design /home/joao
chown pedro:suporte /home/pedro

chmod 770 /home/maria
chmod 770 /home/joao
chmod 770 /home/pedro
chmod 777 /projetos

echo "Infraestrutura criada com sucesso!"
