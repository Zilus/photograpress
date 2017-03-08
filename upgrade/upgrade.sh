#!/bin/bash
echo "Upgrading..."

echo "GET Directus core"
rm master.zip
rm -Rfv directus-master/ 
wget https://github.com/directus/directus/archive/master.zip
unzip master.zip

echo "Sync files"
rsync -avv directus-master/ ../
/bin/cp README.md ../
/bin/cp .gitignore ../
rm -Rfv ../installation

echo "Delete unused files"
rm -rfv directus-master/ master.zip 

echo "Run composer"
cd ../
composer install

echo "All done!"
