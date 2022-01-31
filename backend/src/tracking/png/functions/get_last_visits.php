<?php
function get_last_visits($data){
    $last_visits = "";

    for ($i=0; $i < 6; $i++) { 
        $last_visits = $data[$i]["ip"];
    }

    return $last_visits;
}