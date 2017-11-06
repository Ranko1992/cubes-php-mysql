<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

// Ulazni parametar
$categoryId =$_GET['category_id'];
//
                                                            //uvek se svi parametri stavljaju kao string pod funkcijom msqli_real_escape_string//
$query = "SELECT * FROM products WHERE category_id= '" . mysqli_real_escape_string($link, $categoryId) . "' ORDER BY price DESC";
         



//funkcija za upit nad bazom    ***vraca resurs(pokazivac) (za SELECT upit) na rezultujucu tabelu***
$result = mysqli_query($link, $query);
                              


if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}

          //funkcija za dohvatanje svih rezultata ***MYSQL_ASSOC znaci da izvuce asocijativni niz*** ---- 
$products = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($products);
