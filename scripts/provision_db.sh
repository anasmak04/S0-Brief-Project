#!/bin/bash
# Mise à jour des paquets
apt-get update -y

# Installation MySQL
apt-get install -y mysql-server

# Activer و démarrer MySQL
systemctl enable mysql
systemctl start mysql
