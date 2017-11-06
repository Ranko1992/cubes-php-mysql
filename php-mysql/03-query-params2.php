<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

/*
                                                          
$query = "SELECT * FROM categories WHERE title LIKE 'a%' ";
         

$result = mysqli_query($link, $query);
                              

if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}

          //funkcija za dohvatanje svih rezultata ***MYSQL_ASSOC znaci da izvuce asocijativni niz*** ---- 
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($categories);
 * 
 */

$title = 'iPod Nano';

$query = "SELECT * FROM products WHERE title = ' " . mysqli_real_escape_string($link, $title) . " ' ";
         

$result = mysqli_query($link, $query);
                              

if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}

          //funkcija za dohvatanje svih rezultata ***MYSQL_ASSOC znaci da izvuce asocijativni niz*** ---- 
$products = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($products);