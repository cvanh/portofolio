<?php
class Database {
  private $host, $database, $username, $password, $connection;
  private $port = 3306;
  
  function __construct($host, $username, $password, $database, $port = 3306, $autoconnect = true) {
    $this->host = $host;
    $this->database = $database;
    $this->username = $username;
    $this->password = $password;
    $this->port = 3306;
    $this->open();
  }

  function open() {
    $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database, $this->port);
  }
  
  function close() {
    $this->connection->close();
  }

  // run a query
  function query($query) {
    return $this->connection->query($query);
  }
  // removes naughty shit
  function escape($string) {
    return $this->connection->escape_string($string);
  }
  /** TODO doesnt work 
   * format_query
   * NOTE: makes a query to the database
   * @param string $query
   * @return object wich is formated in json
   */
  function format_query($query){
    header('Content-type: application/json; charset=utf-8');
    $result = $this->query($query);
    while ($row = mysqli_fetch_assoc($result)) {
        $data[]=$row;
    }
    $response = json_encode($data, JSON_PRETTY_PRINT);
    return $response;
  }
}
