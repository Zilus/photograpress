# Photograpress
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
`$ cd todir`

`$ git clone https://github.com/Zilus/photograpress.git .`

`$ composer install`

`$ find . -type f -exec chmod 644 {} \; && find . -type d -exec chmod 755 {} \;`

`$ mv api/config_sample.php api/config.php`


Edit api/config.php and change database access information.

`Import photograpress.sql to database`

To upgrade run:
====================
`$ git pull origin master`
