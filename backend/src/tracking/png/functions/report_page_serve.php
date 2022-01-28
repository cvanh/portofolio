<?php
/**
 * Undocumented function
 *
 * @param [type] $database
 * @return void
 */
function report_last_seen($database){
    return $database->query("INSERT INTO `tracking` (`id`, `ip`, `last_seen`, `last_agent`,`track_id`) VALUES (NULL, '{$_SERVER["REMOTE_ADDR"]}', NOW(), '{$_SERVER["HTTP_USER_AGENT"]}','{$_GET["code"]}');");
}