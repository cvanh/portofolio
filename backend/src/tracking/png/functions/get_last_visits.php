<?php
function get_last_visits($data){
        // this works but generates a lot of errors when $data count is lower than 6
        // for ($i=0; $i < 6; $i++) { 
        //     $last_visits = $last_visits . $data[$i]["ip"] . ", ";
        // }
    
        // return $last_visits;

        // complete shite ples fix me
        $last_visits = null; 

        $last_visits = $last_visits . $data[1]["ip"] . ", ";
        $last_visits = $last_visits . $data[2]["ip"] . ", ";
        $last_visits = $last_visits . $data[3]["ip"] . ", ";
        $last_visits = $last_visits . $data[4]["ip"] . ", ";
        $last_visits = $last_visits . $data[5]["ip"] . ", ";
        $last_visits = $last_visits . $data[6]["ip"] . ", ";

        return $last_visits;
}