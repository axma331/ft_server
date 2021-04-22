<?php
/**
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'database_wp');

/** MySQL database username */
define('DB_USER', 'feschall');

/** MySQL database password */
define('DB_PASSWORD', '21school');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '/F*[{>mLZi7k,3ir(0pn4Zs[&AkQOlS-1yJ543m`pO|KQgy7eMG/Gall!?eBg=J*');
define('SECURE_AUTH_KEY',  'rl6KUZ^`*52fyT3`|#5+n5KIn92b4Dm/k@H~0~}j,z0 Ta_*q~+[G|&s!.f~[F4P');
define('LOGGED_IN_KEY',    '~mS`0bskHBiH~vi%ThC/Zi95nz;~i.2u@w]Y_X+[<[q 3YpGA|J&`6v bwu?!?!+');
define('NONCE_KEY',        '!ds(Z)yEUKb1cm(eOw]>8,o5{#u]@H7+RW]24kIT|TZx;QK>o|uI,jj=T6@i(1:n');
define('AUTH_SALT',        'NTv*e)VMxv2^ohYV`4Kk+{Hj&3JNx,LppUMP9i1,%6B#Z<VrZmrTDDmW,r2gZ}Pq');
define('SECURE_AUTH_SALT', 'KNXX6m*F7*~6;MRl`]}Hr|`v-qA@-ms++HjL)GygT_6tbgyy-TNn`2?q8$?$@x.d');
define('NONCE_SALT',       ',/zYa,gaIbxcn0+Tv[`88tC*=)eVtBT(3i.$4C{RAWXo^/lPP*z#%/>Snk^{Ij.L');
define('LOGGED_IN_SALT',   '>&`Woy8@V]Ym[Z{D+uSNx0d{#{sVT:a@,<?y(~bESb~Z)~91v6s97Ip7.28#<W@-');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
        define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

