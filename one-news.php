<?php
session_start();

require_once __DIR__ . '/models/m_news.php';
require_once __DIR__ . '/models/m_sections.php';

if (!isset($_GET['id'])){
    die('Morate proslediti id');
}

$id = $_GET['id'];

$previewNews = newsFetchOneById($id);
if(empty($previewNews)){
    die('Trazena vest ne postoji');
}



require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_one-news.php';
require_once __DIR__ . '/views/layout/footer.php';