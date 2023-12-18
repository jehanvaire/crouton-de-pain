# Utilisez une image de base contenant httpd
FROM httpd:latest

# Copiez les fichiers de configuration personnalisés dans le conteneur
# COPY ./chemin/vers/vos/fichiers/de/configuration /usr/local/apache2/conf/

# Copiez les fichiers de contenu dans le répertoire de documents du serveur
COPY ./src /usr/local/apache2/htdocs/

EXPOSE 6969

# Commande par défaut pour démarrer le serveur httpd
CMD ["httpd-foreground"]