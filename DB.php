<?php

namespace InfuseMedia\Test;

if ( !defined( 'IM_PATH' ) ) {
	die( 'Hack?' );
}

use mysqli;
use RuntimeException;

/**
 * DB helper class.
 *
 * @package InfuseMedia\Test
 */
class DB
{
	/**
	 * MYSQLI instance of connection.
	 *
	 * @var \mysqli
	 */
	protected $connection;
	
	/**
	 * DB Query.
	 *
	 * @var false|\mysqli_stmt
	 */
	protected $query;
	
	/**
	 * Query closed status.
	 *
	 * @var bool
	 */
	protected $query_closed = TRUE;
	
	/**
	 * Queries count.
	 *
	 * @var int
	 */
	public $query_count = 0;
	
	/**
	 * Table name for view counts.
	 *
	 * @var string
	 */
	private $table_name = 'page_views';
	
	/**
	 * Class constructor.
	 * We are initializing connection to the DB.
	 *
	 * @param  string  $host     DB hostname.
	 * @param  string  $user     DB user name.
	 * @param  string  $pass     DB user password.
	 * @param  string  $name     Default database name.
	 * @param  string  $charset  Default charset.
	 *
	 * @throws \RuntimeException on connection failure.
	 */
	public function __construct( string $host = IM_DB_HOST, string $user = IM_DB_USER, string $pass = IM_DB_PASS, string $name = '', string $charset = 'utf8' )
	{
		$this->connection = new mysqli( $host, $user, $pass, $name );
		
		if ( $this->connection->connect_error ) {
			throw new RuntimeException( 'Failed to connect to MySQL - ' . $this->connection->connect_error );
		}
		
		$this->connection->set_charset( $charset );
	}
	
	/**
	 * Get the defaults columns for our table.
	 *
	 * @return array
	 */
	private function getDefaults()
	: array
	{
		return [
			'ip_address'  => '',
			'user_agent'  => '',
			'view_date'   => date( 'Y-m-d H:i:s' ),
			'page_url'    => '',
			'views_count' => 1,
		];
	}
	
	/**
	 * DB Query.
	 *
	 * @param  string  $query  Query string.
	 *
	 * @return $this
	 * @throws \RuntimeException on query failure.
	 */
	public function query( string $query )
	: DB
	{
		if ( !$this->query_closed ) {
			$this->query->close();
		}
		if ( $this->query = $this->connection->prepare( $query ) ) {
			if ( func_num_args() > 1 ) {
				$x        = func_get_args();
				$args     = array_slice( $x, 1 );
				$types    = '';
				$args_ref = [];
				foreach ( $args as $k => &$arg ) {
					if ( is_array( $args[ $k ] ) ) {
						foreach ( $args[ $k ] as $j => &$a ) {
							$types      .= $this->_gettype( $args[ $k ][ $j ] );
							$args_ref[] = &$a;
						}
						unset( $a );
					}
					else {
						$types      .= $this->_gettype( $args[ $k ] );
						$args_ref[] = &$arg;
					}
				}
				unset( $arg );
				array_unshift( $args_ref, $types );
				call_user_func_array( [
					$this->query,
					'bind_param',
				], $args_ref );
			}
			$this->query->execute();
			if ( $this->query->errno ) {
				throw new RuntimeException( 'Unable to process MySQL query (check your params) - ' . $this->query->error );
			}
			$this->query_closed = FALSE;
			$this->query_count++;
		}
		else {
			throw new RuntimeException( 'Unable to prepare MySQL statement (check your syntax) - ' . $this->connection->error );
		}
		return $this;
	}
	
	/**
	 * Add new record.
	 *
	 * @param  array  $args  Arguments for adding to the DB.
	 *
	 * @return int Affected rows count on success, 0 on failure.
	 * @throws \RuntimeException on query failure.
	 */
	public function add( array $args = [] )
	: int
	{
		$args = array_merge( $this->getDefaults(), $args );
		return $this->query( 'INSERT INTO `' . IM_DB_NAME . '`.`' . $this->table_name . '` (`ip_address`, `user_agent`, `view_date`, `page_url`, `views_count`) VALUES (?,?,?,?,?);',
			$args[ 'ip_address' ],
			$args[ 'user_agent' ],
			$args[ 'view_date' ],
			$args[ 'page_url' ],
			$args[ 'views_count' ]
		)->affectedRows();
	}
	
	/**
	 * Get record from DB.
	 *
	 * @param  string  $ip          User IP address.
	 * @param  string  $user_agent  User agent.
	 * @param  string  $url         Requested url.
	 *
	 * @return array On success, it will be return array with [ID,views_count] fields, otherwise empty array.
	 * @throws \RuntimeException on query failure.
	 */
	public function getRecord( string $ip, string $user_agent, string $url )
	: array
	{
		return $this->query( 'SELECT `ID`, `views_count` FROM `' . IM_DB_NAME . '`.`' . $this->table_name . '` WHERE `ip_address`=? AND `user_agent`=? AND `page_url`=?;',
			$ip,
			$user_agent,
			$url
		)->fetchArray();
	}
	
	
	/**
	 * Update view counts with last view time.
	 *
	 * @param  int  $id           Record ID for update.
	 * @param  int  $views_count  View counts.
	 *
	 * @return int Affected rows count on success - should be 1, or 0 on failure.
	 * @throws \RuntimeException on query failure.
	 */
	public function update( int $id, int $views_count )
	: int
	{
		return $this->query( 'UPDATE `' . IM_DB_NAME . '`.`' . $this->table_name . '` SET `view_date`=?, `views_count`=? WHERE `' . IM_DB_NAME . '`.`' . $this->table_name . '`.`ID`=?;',
			date( 'Y-m-d H:i:s' ),
			$views_count,
			$id
		)->affectedRows();
	}
	
	/**
	 * Fetch results to array.
	 *
	 * @return array
	 */
	public function fetchArray()
	: array
	{
		if ( !$this->query ) {
			return [];
		}
		
		$params = [];
		$row    = [];
		$result = [];
		
		$metadata = $this->query->result_metadata();
		if ( !$metadata ) {
			return [];
		}
		
		while ( $field = $metadata->fetch_field() ) {
			$params[] = &$row[ $field->name ];
		}
		
		call_user_func_array( [
			$this->query,
			'bind_result',
		], $params );
		
		while ( $this->query->fetch() ) {
			foreach ( $row as $key => $val ) {
				$result[ $key ] = $val;
			}
		}
		
		$this->query->close();
		$this->query_closed = TRUE;
		return $result;
	}
	
	/**
	 * Get affected rows count.
	 *
	 * @return int
	 */
	public function affectedRows()
	: int
	{
		return !empty( $this->query->affected_rows ) ? (int)$this->query->affected_rows : 0;
	}
	
	/**
	 * Get last insert ID.
	 *
	 * @return int
	 */
	public function lastInsertID()
	: int
	{
		return !empty( $this->connection->insert_id ) ? (int)$this->connection->insert_id : 0;
	}
	
	/**
	 * Simple type completion sprintf like replacer.
	 *
	 * @param  mixed  $var  Variable.
	 *
	 * @return string Variable type. Available types: s[string], d[floats], i[integers], b[booleans]].
	 */
	private function _gettype( $var )
	: string
	{
		if ( is_string( $var ) ) {
			return 's';
		}
		
		if ( is_float( $var ) ) {
			return 'd';
		}
		
		if ( is_int( $var ) ) {
			return 'i';
		}
		
		return 'b';
	}
}