<?php

// $db = mysqli_connect('localhost', 'root', 'JOELQ2003', 'app_salon');


// if (!$db) {
//     echo "Error: No se pudo conectar a MySQL.";
//     echo "errno de depuración: " . mysqli_connect_errno();
//     echo "error de depuración: " . mysqli_connect_error();
//     exit;
// }   
$db = mysqli_connect('b6ihkyftwac2plxe6gqw-mysql.services.clever-cloud.com', 'uvz3pkkjxfdai6mt', '7HqUqzj5Ehr5wyEqesNJ', 'b6ihkyftwac2plxe6gqw');


if (!$db) {
    echo "Error: No se pudo conectar a MySQL.";
    echo "errno de depuración: " . mysqli_connect_errno();
    echo "error de depuración: " . mysqli_connect_error();
    exit;
}   
