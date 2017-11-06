<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

$query = "SELECT * FROM brands";

$result = mysqli_query($link, $query);
if ($result === FALSE){
    die('MySQL Error: ' . mysqli_error($link));
}
$brands = mysqli_fetch_all($result, MYSQLI_ASSOC);


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-brand-list.php';
require_once __DIR__ . '/views/layout/footer.php';

