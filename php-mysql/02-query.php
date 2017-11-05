<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

//funkcija za upit nad bazom    ***vraca resurs (za SELECT upit) do rezultujuce tabele***
$result = mysqli_query($link, 'SELECT title AS naziv_prozivoda, quantity AS kolicina FROM `products`');

if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}

          //funkcija za dohvatanje svih rezultata ***MYSQL_ASSOC znaci da izvuce asocijativni niz*** --- 
$products = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($products);