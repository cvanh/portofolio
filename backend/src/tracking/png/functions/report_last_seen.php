<?php
/**
 * inserts the request in the db for further tracking purpuses
 *
 * @param [socket] $database connection
 */
function report_last_seen($database){
     $database->query("INSERT INTO `tracking` (`id`, `ip`, `last_seen`, `last_agent`,`track_id`) VALUES (NULL, '{$_SERVER["REMOTE_ADDR"]}', NOW(), '{$_SERVER["HTTP_USER_AGENT"]}','{$_GET["code"]}');");
}