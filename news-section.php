<?php
session_start();

require_once __DIR__ . '/models/m_news.php';
require_once __DIR__ . '/models/m_sections.php';

if (!isset($_GET['id'])){
    die('Morate proslediti id');
}

$id = $_GET['id'];

$sectionNewsById = sectionsFetchOneById($id);

if(empty($sectionNewsById)){
    die ('Izabrali ste nepostojecu sekciju');
}
$page = 1;

if (isset($_GET['page'])){
    $page = (int) $_GET['page'];
}

$rowsPerPage = 4;

$totalRows = newsGetCountBySection($sectionNewsById['id']);


$totalPages = ceil($totalRows/$rowsPerPage);
if ($page > $totalPages){
    die ('Trazena stranica ne postoji');
}

$newsPerSection = newsFetchAllbySectionByPage($sectionNewsById['id'], $page, $rowsPerPage);


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_news-section.php';
require_once __DIR__ . '/views/layout/footer.php';

