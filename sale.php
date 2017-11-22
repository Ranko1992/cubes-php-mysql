<?php
session_start();

require_once __DIR__ . '/models/m_products.php';
require_once __DIR__ . '/models/m_tags.php';

$page = 1;

if (isset($_GET['page'])){
    $page = (int) $_GET['page'];
}

$rowsPerPage = 4;   

$totalRows = productsOnSaleGetCount();   //ukupno redova sa svim proizvodima zbirno

$totalPages = ceil($totalRows/$rowsPerPage);   

if ($page > $totalPages){
    die ('Trazena stranica ne postoji');
}

$productsOnSale = productsOnSaleFetchAllByPage($page, $rowsPerPage);


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_sale.php';
require_once __DIR__ . '/views/layout/footer.php';