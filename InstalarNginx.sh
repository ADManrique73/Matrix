#!/bin/bash

#Autor: AsierDM 

#Actualziar máquina
sudo apt update
sudo apt upgrade -y

#Instalar nginx
sudo apt install nginx -y
sudo systemctl status nginx
