#!/bin/bash

user="sari"
backup_address="./Backup"
mkdir -p "$backup_address"

N_connections=$(who | grep -c "$user")
date_format=$(date +"%d-%m-%Y-%H:%M")
fichier="$backup_address/N_connections-$date_format"

#touch $fichier
echo "Nombre de connexions de $user : $N_connections" > "$fichier" 
#tar -cvzf "$fichier.tar" "$fichier"
tar -cvzf "Archive.tar" "$fichier"
#rm "$fichier"
echo "File Archive.tar created."
