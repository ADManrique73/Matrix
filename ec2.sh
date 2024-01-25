#!/bin/bash

#AsierDM 

# Variables
AMI_ID="ami-0c7217cdde317cfec"  
INSTANCE_TYPE="t2.micro"
KEY_NAME="asier.pem"
SECURITY_GROUP_ID="sg-0cac8380b6a72f987"  
SUBNET_ID="subnet-05e92731a4c7f6ccf"  
USER_DATA_SCRIPT="script.sh"  
 
# Crear la instancia EC2
INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --subnet-id $SUBNET_ID \
  --user-data file://$USER_DATA_SCRIPT \
  --query 'Instances[0].InstanceId' \
  --output text)
 
# Esperar hasta que la instancia esté en ejecución
echo "Esperando a que la instancia esté en ejecución..."
aws ec2 wait instance-running --instance-ids $INSTANCE_ID
 
# Obtener la dirección IP pública de la instancia
PUBLIC_IP=$(aws ec2 describe-instances \
  --instance-ids $INSTANCE_ID \
  --query 'Reservations[0].Instances[0].PublicIpAddress' \
  --output text)
 
echo "La instancia con ID $INSTANCE_ID está en ejecución."
echo "Dirección IP pública: $PUBLIC_IP"