<?php


$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

//provera da li smo se uspesno konektovali
if ($link === FALSE){
    die('MySQL Error:' . mysqli_connect_error($link));
}

$title = 'Group title';

$query = "INSERT INTO groups (title) VALUES ('" . mysqli_real_escape_string($link, $title) ."')";

$result = mysqli_query($link, $query);

if($result === false){
    die('MySQL error:' . mysqli_error($link));
}
// radi se odmah nakon mysqli_query funkcije
$newId = mysqli_insert_id($link);

echo ' New group has been added with ID: ' . $newId;

