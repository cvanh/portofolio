<?php
/**
 * gets the data of everything with the trackid
 *
 * @param [type] $database
 * @return void
 */
function get_data($database)
{
    // this is so we can know the last page served
    $last_seen_query = $database->query("SELECT * FROM `tracking` WHERE track_id = '{$_GET["code"]}' ORDER BY last_seen DESC");

    while ($row = mysqli_fetch_assoc($last_seen_query)) {
        $data[] = $row;
    }
    // returns the variable to the last recorded "last seen"
    return $data;
}
