# Photograpress v1.0
Directus CMS for Photographers

Requirements
====================
* Apache HTTP Server
*	mod_rewrite
*	PHP 5.5+
	*	curl
	*	gd
	*	finfo
	*	pdo_mysql
	*	mcrypt
*	MySQL 5.2+ (No strict mode)

Instalation
====================
`$ cd DOCROOT`

Clean the directory, I use (dangerous command if you're not in the DOCROOT):

`$ rm -Rfv *`

`$ rm -Rfv .*`

`$ git clone https://github.com/Zilus/photograpress.git .`

`$ composer install`

`$ find . -type f -exec chmod 644 {} \; && find . -type d -exec chmod 755 {} \;`

`$ mv api/config_sample.php api/config.php`

`$ mv api/configuration_sample.php api/configuration.php`


Edit api/config.php and change timezone, database access information and path config.

`date_default_timezone_set('America/Mexico_City');`

`define('DB_HOST', 'localhost');`

`define('DB_PORT', 3306);`

`define('DB_NAME', 'yourdb');`

`define('DB_USER', 'youruser');`

`define('DB_PASSWORD', 'yourpasswd');`

`define('DB_PREFIX', '');`

`define('DIRECTUS_PATH', '/your_instalation_path/');`

Edit api/configuration.php and change files path.

`'session' => [
        'prefix' => 'your-session-name_'
    ],`

`'root_url' => '/yourpath/storage/uploads',`

`'root_thumb_url' => '/yourpath/storage/uploads/thumbs',`


Database
====================
Edit photograpress.sql and change according to needs:
`directus_settings: "project_name", "project_url" and "cms_thumbnail_url"`

The default admin login is: admin@photograpress.com (you can change it if you want, by replacing: `directus_users: admin email`)

Leave the password untouched, the default passwd is "photograpress", you can change it later on.

Import photograpress.sql to database

Change your logo, by overriting /img/logo.png (use a 170x100 png image)

To upgrade run:
====================
`$ git pull origin master`

If it gets you overriting by merge errors, and you want to fetch anyway:

`git fetch --all`

`git reset --hard origin/master`

DO NOT import photograpress.sql file to database (just for new installations)

To get your access token run:
====================
`curl -d "email=[your email]&password=[your password]" https://yourdomain/api/1.1/auth/request-token`
