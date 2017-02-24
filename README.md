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

`$ git clone https://github.com/Zilus/photograpress.git .`

`$ composer install`

`$ find . -type f -exec chmod 644 {} \; && find . -type d -exec chmod 755 {} \;`

`$ mv api/config_sample.php api/config.php`


Edit api/config.php and change timezone, database access information and path config.

`date_default_timezone_set('America/Mexico_City');`

`define('DB_HOST', 'localhost');`

`define('DB_PORT', 3306);`

`define('DB_NAME', 'yourdb');`

`define('DB_USER', 'youruser');`

`define('DB_PASSWORD', 'yourpasswd');`

`define('DB_PREFIX', '');`

`define('DIRECTUS_PATH', '/yourpath/');`

Edit api/configuration.php and change files path.

`'root_url' => '/yourpath/storage/uploads',`

`'root_thumb_url' => '/yourpath/storage/uploads/thumbs',`

Edit photograpress.sql and change according to needs:
`directus_settings: "project_name", "project_url" and "cms_thumbnail_url"`

`directus_users: admin email`

Database
====================
The default login is: admin@photograpress.com
Leave the password untouched, the default passwd is "photograpress", you can change it later on.

Import photograpress.sql to database

Change your logo, by overriting /img/logo.png (use a 170x100 png image)

To upgrade run:
====================
`$ git pull origin master`

DO NOT import photograpress.sql file to database (just for new installations)

To get your access token run:
====================
`curl -d "email=[your email]&password=[your password]" https://yourdomain/api/1.1/auth/request-token`
