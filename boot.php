<?php
/**
 * Main bootstrap file.
 * We will define all constants here.
 * Also, all top level includes will be attached here.
 */

if ( $_SERVER[ 'REQUEST_METHOD' ] === 'GET' && realpath( __FILE__ ) === realpath( $_SERVER[ 'SCRIPT_FILENAME' ] ) ) {
	header( 'HTTP/1.0 403 Forbidden', TRUE, 403 );
	die();
}

/**
 * Top level directory path.
 */
const IM_PATH = __DIR__;

/**
 * DB host.
 */
const IM_DB_HOST = 'localhost';

/**
 * DB user name.
 */
const IM_DB_USER = 'root';

/**
 * DB user password.
 */
const IM_DB_PASS = '';

/**
 * DB name.
 */
const IM_DB_NAME = 'infusemedia_test';

/**
 * Debug status.
 */
const IM_DEBUG = TRUE;

/**
 * Require DB helper class.
 */
require_once 'DB.php';

/**
 * Require Utilities.
 */
require_once 'Utils.php';