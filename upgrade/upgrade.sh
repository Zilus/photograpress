#!/bin/bash
echo "Getting config vars"
DBNAME=`cat ../api/config.php | grep DB_NAME | cut -d \' -f 4`
DBUSER=`cat ../api/config.php | grep DB_USER | cut -d \' -f 4`
DBPASSWORD=`cat ../api/config.php | grep DB_PASSWORD | cut -d \' -f 4`
UPGRADE_PATH=`pwd`
SQLfile=backup-$(date +\%d-\%m-\%Y_\%s).sql
mysqldump --user=$DBUSER --password=$DBPASSWORD --host=localhost $DBNAME > $UPGRADE_PATH/sql/$SQLfile

echo "GET Directus core"
rm master.zip
rm -Rfv directus-master/
wget https://github.com/directus/directus/archive/master.zip
unzip master.zip

echo "Sync files"
rsync -avv directus-master/ ../
/bin/cp README.md ../
/bin/cp .gitignore ../
/bin/cp es.json ../api/locales/es.json
rm -Rfv ../installation

echo "Delete unused files"
rm -rfv directus-master/ master.zip

echo "Run composer"
cd ../
composer install

echo "importing database"
mysql --user=$DBUSER --password=$DBPASSWORD --host=localhost $DBNAME < $UPGRADE_PATH/sql/$SQLfile

echo "All done!"
