<?php
session_start();

require_once __DIR__ . '/models/m_products.php';
require_once __DIR__ . '/models/m_categories.php';

if (!isset($_GET['id'])){
    die('Morate proslediti id kategorije');
}

$id = (int) $_GET['id'];

$category = categoriesFetchOneById($id);
if (empty($category)){
    die("Izabrali ste nepostojecu kategoriju");
}

$page = 1;

if (isset($_GET['page'])){
    $page = (int) $_GET['page'];
}


$rowsPerPage = 8;   
            //funkcija za dovlacenje svih redova
$totalRows = productsGetCountByCategory($category['id']);   //ukupno redova sa svim proizvodima zbirno

$totalPages = ceil($totalRows/$rowsPerPage);   

$products = productsFetchAllByCategoryByPage($category['id'],$page,$rowsPerPage);

            


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_category.php';
require_once __DIR__ . '/views/layout/footer.php';