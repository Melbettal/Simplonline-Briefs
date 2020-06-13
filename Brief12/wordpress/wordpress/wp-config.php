<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'brief11' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^^(&I48tPET>HoqSw %MR%{)FZQcj?LG?qOqvDt5{J=#h4fgG^0 eAgWIA~3R0Bh' );
define( 'SECURE_AUTH_KEY',  '!zT=nVX[f1r !WMJXe+dsC^WNcP:KML_0/=r%7yX=H.!-M:<_sSnXBN^>jWqQInW' );
define( 'LOGGED_IN_KEY',    '/nEj:VA>kf{if* *=(cSVS+;5*0IH?jFYXr(t1fsGIP/xMgbm@*A7tZ4fB[8@~ln' );
define( 'NONCE_KEY',        'SOW[T3 PxD8)N;-paZ>Q]!JixG~X{YBJ00~(wNv!,]TZ2>hyvwlX0wbU{EI<y}Zm' );
define( 'AUTH_SALT',        ']n3U`ct@49-p)=U(S9Q,zN2AQ)>SDVF4_Od{0vDe(Ue9tC!}:b+]SLQ0F3wwgr;u' );
define( 'SECURE_AUTH_SALT', 'b,A00Z`!K!DrdNU3SmTh(t60=G4ok0Sdj?yRId.WOwub1*!b.C]5MXO&O.G;a Tk' );
define( 'LOGGED_IN_SALT',   'fc3s{dquME5:Uv]E#bGFT5.kBl[*6vd65}mg+jLH; ]Rq0E(AX$ (u1xf7q~uJ,X' );
define( 'NONCE_SALT',       'poL;/w4[No_L=e.=cz$I{4$e)p]QT!~^lYyeAi}e<OS~.n=2jwq%t`i.%}l|oQ*i' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_briefWp';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Multisite */
define( 'WP_ALLOW_MULTISITE', true );
define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'localhost');
define('PATH_CURRENT_SITE', '/wordpress/wordpress/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
