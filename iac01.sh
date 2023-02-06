#!/bin/bash
#
#Autor: Dorival Barros Trindade Filho (dorivalbarrosti@gmail.com)
#Orientador: Denilson Bonatti
#Descrição: Destina-se à aplicação de conheciemntos do Bootcamp Linux do Zero, da Digital Innovation One (FEV-2023) .
#Versão: 1.0
#Licença: GPL#
#
# *** LIMPAR A TELA ****

clear
echo "$(tput setaf 6)"
echo "Comando CLEAR aplicado ..."
echo
echo "Bash Script em execução: " $(basename "$0")
echo "$(tput sgr 0)"
echo
sleep 1 #pausa proposital

# Situação temporal

# Ajuste para o fuso -3
timedatectl set-timezone America/Sao_Paulo

echo
echo "Dia : $(date +%x)"
echo "Hora: $(date +%T)"
echo

sleep 1 #pausa proposital

# Situação autoral
echo "Usuário autorizado: ${USER} !"
echo
sleep 1 #pausa proposital
echo 

# Fase de Execução [ 01 ] ----------------------------------------------------------- DIRETÓRIOS

echo "$(tput setaf 6)Criando Direitórios ... $(tput sgr 0)"
echo
sleep 1 #pausa proposital
echo
#Diretório /puclico ...
mkdir /publico
echo "/publico ...ok!"
#Diretório /adm
mkdir /adm
echo "/adm ...ok!"
#Diretório /ven
mkdir /ven
echo "/ven ...ok!"
#Diretório /sec
mkdir /sec
echo "/sec ...ok!"
echo
sleep 1 #pausa proposital
echo

# Fase de Execução [ 02 ] ----------------------------------------------------------- GRUPOS 

echo "$(tput setaf 6)Criando Grupos de Usuários ... $(tput sgr 0)"
echo
#Grupo ADM
groupadd GRP_ADM
echo "GRP_ADM (administração)...ok!"
echo
#Grupo VEN
groupadd GRP_VEN
echo "GRP_VEN (vendas)...ok!"
echo
#Grupo SEC
groupadd GRP_SEC
echo "GRP_SEC (secretariado)...ok!"
echo
sleep 1 #pausa proposital
echo

# Fase de Execução [ 03 ] ---------------------------------------------------------- USUÁRIOS E GRUPOS

echo "$(tput setaf 6)Criando Usuários e atribuindo aos grupos ... $(tput sgr 0)"
echo

# ALOCAR NO GRUPO = ADMINISTRAÇÃO 

#Usuário CARLOS JUSTINO
useradd carlos  -m -c "Carlos Justino" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
echo "Usuário 'carlos' ...ok!"

#Usuário MARIA SILVIA
useradd maria  -m -c "Maria Silvia" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
echo "Usuário 'maria' ...ok!"

#Usuário JOAO FRANCO
useradd joao  -m -c "João Franco" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
echo "Usuário 'joao' ...ok!"
echo
sleep 0.5 #pausa proposital
echo

# ALOCAR NO GRUPO = VENDAS

#Usuário DEBORA HILLS
useradd debora  -m -c "Debora Hills" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
echo "Usuário 'debora' ...ok!"

#Usuário SEBASTIANA JORDAO
useradd sebastiana  -m -c "Sebastiana Jordão" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
echo "Usuário 'sebastiana' ...ok!"

#Usuário ROBERTO TAVARES
useradd roberto  -m -c "Roberto Tavares" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
echo "Usuário 'roberto' ...ok!"
echo
sleep 0.5 #pausa proposital
echo

# ALOCAR NO GRUPO = SECRETARIADO
 
#Usuário JOSEFINA MONTEIRO
useradd josefina  -m -c "Josefina Monteiro" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Usuário 'josefina' ...ok!"

#Usuário AMANDA CELESTINO
useradd amanda  -m -c "Amanda Celestino" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Usuário 'carlos' ...ok!"

#Usuário ROGERIO BANDEIRA
useradd rogerio  -m -c "Rogerio Bandeira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Usuário 'rogerio' ...ok!"
echo
sleep 0.5 #pausa proposital
echo

# Fase de Execução [ 04 ] ---------------------------------------------------------- PERMISSÕES

# Usuário ROOT como proprietário de todos os diretórios criados neste script

echo "$(tput setaf 6)Atribuindo o proprietário e as permissões dos usuários ... $(tput sgr 0)"
echo
sleep 1 #pausa propostial
echo
#usuário ROOT - propritário dos novos grupos e dos respectivos diretórios

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Usuário ROOT configurado como proprietário dos grupos e seus diretórios ...ok!"
sleep 0.5 #pausa proposital
echo

#Permissões aos demais usuários sobre seus respectivos diretórios

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Permissões aos diretórios /adm /ven /sec /publico atribuídas ...ok!"
echo
sleep 0.5 #pausa proposital

# Fase de Encerramento [ 05 ] ---------------------------------------------------------- FIM

echo
echo "$(tput setaf 6)Bash Script encerrado: " $(basename "$0") " ...ok!"
echo "Dia : $(date +%x)"
echo "Hora: $(date +%T)"
echo "$(tput sgr 0)"
sleep 1 #pausa proposital
echo 

