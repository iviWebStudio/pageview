<?php

namespace InfuseMedia\Test;

use Exception;

if ( !defined( 'IM_PATH' ) ) {
	die( 'Hack?' );
}

/**
 * Helper functions class.
 *
 * @package InfuseMedia\Test
 */
class Utils
{
	/**
	 * Get customer IP.
	 *
	 * @return string
	 */
	public static function getIP()
	: string
	{
		if ( !empty( $_SERVER[ 'HTTP_CLIENT_IP' ] ) ) {
			return $_SERVER[ 'HTTP_CLIENT_IP' ];
		}
		
		if ( !empty( $_SERVER[ 'HTTP_X_FORWARDED_FOR' ] ) ) {
			return $_SERVER[ 'HTTP_X_FORWARDED_FOR' ];
		}
		
		return $_SERVER[ 'REMOTE_ADDR' ];
	}
	
	/**
	 * Get HTTP referrer for current requested url.
	 * We will sanitize url from query params, so all page views will be count as pure url.
	 *
	 * @return false|string False if no referrer found, referrer url elsewhere.
	 */
	public static function getReferrer()
	{
		$url = $_SERVER[ 'HTTP_REFERER' ];
		if ( $url_query = strpos( $url, '?' ) ) {
			return substr( $url, 0, $url_query );
		}
		return $url;
	}
	
	/**
	 * Update current page view counts.
	 *
	 * @param  string  $ip_address  User IP address.
	 * @param  string  $user_agent  User user agent.
	 * @param  string  $url         Requested url.
	 *
	 * @return int Updated view count on success, 0 elsewhere.
	 */
	public static function updateViewCount( string $ip_address, string $user_agent, string $url )
	: int
	{
		try {
			$db = new DB();
			
			$records = $db->getRecord( $ip_address, $user_agent, $url );
			if ( !empty( $records[ 'views_count' ] ) ) {
				$view_count = (int)$records[ 'views_count' ] + 1;
				return $db->update( $records[ 'ID' ], $view_count ) ? $view_count : 0;
			}
			
			return $db->add( [
				'ip_address'  => $ip_address,
				'user_agent'  => $user_agent,
				'view_date'   => date( 'Y-m-d H:i:s' ),
				'page_url'    => $url,
				'views_count' => 1,
			] ) ? 1 : 0;
		} catch ( Exception $e ) {
			self::log( $e->getMessage() );
			return 0;
		}
	}
	
	/**
	 * Render image for showing page view statistics.
	 *
	 * @param  string  $ip_address  User IP address.
	 * @param  string  $user_agent  User user agent.
	 * @param  string  $url         Requested url.
	 * @param  int     $view_count  Page view counts.
	 *
	 * @return void
	 */
	public static function renderImage( string $ip_address, string $user_agent, string $url, int $view_count )
	: void
	{
		$image       = imagecreatetruecolor( 340, 110 );
		$white_color = imagecolorallocate( $image, 255, 255, 255 );
		$blue_color  = imagecolorallocate( $image, 138, 180, 248 );
		imagestring( $image, 3, 60, 5, 'STATISTICS FOR THE CURRENT PAGE', $white_color );
		imagestring( $image, 2, 5, 30, 'User IP:    ' . $ip_address, $blue_color );
		imagestring( $image, 2, 5, 50, 'User agent: ' . substr( $user_agent, 0, 40 ) . '...', $blue_color );
		imagestring( $image, 2, 5, 70, 'URL:        ' . $url, $blue_color );
		imagestring( $image, 2, 5, 90, 'View count: ' . $view_count, $blue_color );
		
		header( 'Content-Type: image/jpeg' );
		header( "Cache-Control: no-store, no-cache, must-revalidate, max-age=0" );
		header( "Cache-Control: post-check=0, pre-check=0", FALSE );
		header( "Pragma: no-cache" );
		imagejpeg( $image, NULL, 75 );
		imagedestroy( $image );
	}
	
	/**
	 * Log helper.
	 * Write info to the error.log file.
	 *
	 * @param  string  $message  Message for log.
	 *
	 * @return void
	 */
	public static function log( string $message = '' )
	: void
	{
		if ( !defined( 'IM_DEBUG' ) || !IM_DEBUG ) {
			return;
		}
		$log_file = fopen( IM_PATH . '/errors.log', 'awb' );
		if ( !$log_file ) {
			die( 'Cannot open file.' );
		}
		
		fwrite( $log_file, date( 'c' ) . ' ' . $message . PHP_EOL );
		fclose( $log_file );
	}
}