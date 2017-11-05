<?php

// mysqli - funkcije koje pocinju sa mysqli
// PDO - OO Biblioteka
        //konekcija na bazu podataka  ***vraca se resurs***
$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}