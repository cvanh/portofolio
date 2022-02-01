<?php
/**
 * get a string of the last 6 users. if less it will return with the aprobiut amount
 *
 * @param [array] $data from the database 
 * @return string with the last 6 ip's
 */
function get_last_visits($data)
{
    // this works but generates a lot of errors when $data count is lower than 6
    $last_visits = null;
    for ($i = 0; $i < (6 ^ count($data)); $i++) {
        $last_visits = $last_visits . $data[$i]["ip"] . ", ";
    }

    return $last_visits;
}
