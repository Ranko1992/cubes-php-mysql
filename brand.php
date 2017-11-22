<?php
session_start();

require_once __DIR__ . '/models/m_brands.php';
require_once __DIR__ . '/models/m_products.php';

if (!isset($_GET['id'])){
    die('Morate proslediti id');
}
$id = (int)$_GET['id'];

$brand = brandsFetchOneById($id); //dovlacenje asocijativnog niza preko id-ja

if(empty($brand)){
    die("Izabrani brend ne postoji");
}

$page = 1;
if(isset($_GET['page'])){
    $page = (int)$_GET['page'];
}

$rowsPerPage = 8;
$totalRows = productsGetCountByBrand($brand['id']);

$totalPages = ceil($totalRows/$rowsPerPage);
if($page > $totalPages){
    die('Izabrali ste nepostojecu stranicu');
}

$productsByBrand = productsFetchAllByBrandsByPage($brand['id'], $page, $rowsPerPage);
$productsBrands = productsFetchAllByBrand($brand['id']);
require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_brand.php';
require_once __DIR__ . '/views/layout/footer.php';