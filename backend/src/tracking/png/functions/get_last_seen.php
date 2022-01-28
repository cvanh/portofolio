<?php
/**
 * get last page view 
 *
 * @param [socket] $database conn
 * @return string of the timestamp of the last page serve
 */
function get_last_seen($database)
{
    // this is so we can know the last page served
    $last_seen_query = $database->query("SELECT * FROM `tracking` WHERE ip = '{$_SERVER['REMOTE_ADDR']}' ORDER BY last_seen DESC LIMIT 1; ");

    while ($row = mysqli_fetch_assoc($last_seen_query)) {
        $data[] = $row;
    }
    // returns the variable to the last recorded "last seen"
    return $data[0]["last_seen"];
}
