<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

$id = 21;


//upit
$query = "SELECT * FROM products WHERE id = '" . mysqli_real_escape_string($link,$id) . "' "; 

// rezultujuca tabela nad bazom
$result = mysqli_query($link, $query);

if ($result == false){
    die ('MySQL error' . mysqli_error($link));
}

//$products = mysqli_fetch_all($result, MYSQLI_ASSOC);
//
//
//
////izvlacenje jednog reda iz baze
//$product = $products[0];
//print_r($product);


$product = mysqli_fetch_assoc($result);
print_r($product);









