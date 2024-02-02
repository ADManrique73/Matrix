#!/bin/bash

#Autor: AsierDM 

#Actualizar máquina
sudo apt update
sudo apt upgrade -y

#Instalar y actualizar repositorios
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update

#instalar docker
sudo apt install docker-ce -y

#comprobar estado de docker
sudo systemctl status docker
