<?php
/**
 * @param [object] the database class 
 * @param [string] the query 
 * @return array formatted from mysqli to json
 * 
 */
function format_query($database,$query){
    header('Content-type: application/json; charset=utf-8');
    header("Access-Control-Allow-Origin: *");
    $result = $database->query($query);
    while ($row = mysqli_fetch_assoc($result)) {
        $data[]=$row;
    }
    return json_encode($data, JSON_PRETTY_PRINT);
}
