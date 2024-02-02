#!/bin/bash

#Autor: AsierDM 

#Actualizar máquina
sudo apt update
sudo apt upgrade -y

#Instalar coturn
sudo apt install coturn -y
sudo systemctl status coturn
