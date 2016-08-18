<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */
 
// Include local configuration
if (file_exists(dirname(__FILE__) . '/local-config.php')) {
	include(dirname(__FILE__) . '/local-config.php');
}

// Global DB config
if (!defined('DB_NAME')) {
	define('DB_NAME', 'makerhawaii');
}
if (!defined('DB_USER')) {
	define('DB_USER', 'makerhawaii');
}
if (!defined('DB_PASSWORD')) {
	define('DB_PASSWORD', 'makerhawaii');
}
if (!defined('DB_HOST')) {
	define('DB_HOST', 'localhost');
}

/** Database Charset to use in creating database tables. */
if (!defined('DB_CHARSET')) {
	define('DB_CHARSET', 'utf8');
}

/** The Database Collate type. Don't change this if in doubt. */
if (!defined('DB_COLLATE')) {
	define('DB_COLLATE', '');
}

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '!i8U/?O!L/!YT)10IYV3-SH{r2h*;6db]+<C<IICpnL!T=cn)|!|UGiK^g?&KchY');
define('SECURE_AUTH_KEY',  'Wcj&n|gO|-F1*<z+d~d~rpyBO.C7Fpo{0aDd(E<yz$-).g-%GP@-<)tduIT.Jt35');
define('LOGGED_IN_KEY',    'uG%+ym5P0@J:_awQd=56SP+Bn#)`Jij LE2ymuw*+;k`tMBP}Z:pG16a%I6s%yRV');
define('NONCE_KEY',        ']`PWFO{d5ylJ*Kii7l^/%he CLHh+veG?#!*ojMZ]6~Q-/?8Z!td}[8wx#|[.74&');
define('AUTH_SALT',        ']}7cMM]=#E@kmWpill]PAI*(Q.AoE05_!bM|HozpP8MFER2UDA$pe&%4q<X6nI<P');
define('SECURE_AUTH_SALT', 'K0pt3H<A$28bP@e++6-$IK/:$29 <YSJ&s ^?ll4mI~@JA,))]=sW<sUsj+ba9+O');
define('LOGGED_IN_SALT',   '3sks;SguBVIIww/iB]D6+JZ?[.$e)?!w=;U%DIz+p*I3($rFbS=+<f>XS}^w{jV?');
define('NONCE_SALT',       'OsQ_viWg!wtB0t+8lwgt<sd>QvZq$J]qj;+W+fb.Oiwv6JR; *-m/*^f#qXynxaF');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
if (!defined('WP_DEBUG')) {
	define('WP_DEBUG', true);
}

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
