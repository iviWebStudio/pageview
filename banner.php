<?php
/**
 * Image file replacer.
 * There we will count page view, update db records and show the results as image.
 */

use InfuseMedia\Test\Utils;

if ( empty( $_SERVER[ 'HTTP_REFERER' ] ) ) {
	die( 'Cannot access directly.' );
}

if ( !empty( $_SERVER[ 'HTTP_SEC_FETCH_MODE' ] ) && $_SERVER[ 'HTTP_SEC_FETCH_MODE' ] === 'navigate' ) {
	die( 'Cannot access out of context.' );
}

require_once 'boot.php';

$view_count = Utils::updateViewCount( Utils::getIP(), $_SERVER[ 'HTTP_USER_AGENT' ], Utils::getReferrer() );

if ( !$view_count ) {
	Utils::log( 'Cannot update data.' . PHP_EOL . print_r( [
			'ip'         => Utils::getIP(),
			'user_agent' => $_SERVER[ 'HTTP_USER_AGENT' ],
			'url'        => Utils::getReferrer(),
		], 1 ) );
	die( 'Cannot update data.' );
}

Utils::renderImage( Utils::getIP(), $_SERVER[ 'HTTP_USER_AGENT' ], Utils::getReferrer(), $view_count );