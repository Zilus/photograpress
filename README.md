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

To check for strict mode:
====================
`SELECT @@GLOBAL.sql_mode;`

`SELECT @@SESSION.sql_mode;`

`SHOW VARIABLES LIKE 'sql_mode';`

Instalation
====================
`$ cd DOCROOT`

`$ git clone https://github.com/Zilus/photograpress.git .`

`$ composer install`

`$ find . -type f -exec chmod 644 {} \; && find . -type d -exec chmod 755 {} \;`

`$ mv api/config_sample.php api/config.php`


Edit api/config.php and change database access information and path config.

`define('DB_HOST', 'localhost');`

`define('DB_PORT', 3306);`

`define('DB_NAME', 'photograpress');`

`define('DB_USER', 'photograpress');`

`define('DB_PASSWORD', 'do]cTpR9T9T$');`

`define('DB_PREFIX', '');`

`define('DIRECTUS_PATH', '/photograpress/');`

Edit photograpress.sql and change according to needs:
`directus_settings: "project_name", "project_url" and "cms_thumbnail_url"`

`directus_users: admin email`

Leave the password untouched, the default passwd is "photograpress", you can change it later on.

Import photograpress.sql to database

Change your logo, by overriting /img/logo.png (use a 170x100 png image)

To upgrade run:
====================
`$ git pull origin master`

DO NOT import the .sql file (just for new installations)

To get your access token run:
====================
`curl -d "email=[your email]&password=[your password]" https://yourdomain/api/1.1/auth/request-token`
