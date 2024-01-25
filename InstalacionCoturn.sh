#!/bin/bash

#AsierDM 

sudo apt update
sudo apt upgrade -y
sudo apt install coturn -y
sudo systemctl status coturn
