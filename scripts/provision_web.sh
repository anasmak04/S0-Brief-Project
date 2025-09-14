#!/bin/bash
# Mise à jour des paquets
apt-get update -y

# Installation Apache2
apt-get install -y apache2

# Activer et démarrer Apache
systemctl enable apache2
systemctl start apache2

# Copier contenu website
cp -r /vagrant/website/* /var/www/html/
