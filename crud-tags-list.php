<?php

session_start();

require_once __DIR__ . '/models/m_tags.php';
require_once __DIR__ . '/models/m_users.php';

if (!isUserLoggedIn()) {
	header('Location: /login.php');
	die();
}


$systemMessage = '';


if (isset($_SESSION['system_message'])) {
    $systemMessage = $_SESSION['system_message'];

    unset($_SESSION['system_message']);
}

$tags = tagsFetchAll();


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-tag-list.php';
require_once __DIR__ . '/views/layout/footer.php';



