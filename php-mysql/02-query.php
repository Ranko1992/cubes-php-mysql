<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

//funkcija za upit nad bazom    ***vraca resurs(pokazivac) (za SELECT upit) na rezultujucu tabelu***
$result = mysqli_query($link, 'SELECT * FROM `products` ');

if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}

          //funkcija za dohvatanje svih rezultata ***MYSQL_ASSOC znaci da izvuce asocijativni niz*** ---- 
$products = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($products);