<?php
session_start();


require_once __DIR__ . '/models/m_users.php';

if (!isUserLoggedIn()) {
	header('Location: /login.php');
	die();
}
require_once __DIR__ . '/models/m_sections.php';


//ovde se prihvataju vrednosti polja, popisati sve kljuceve i pocetne vrednosti
$formData = array(
    'title' => ''
	//ovde napisati sve kljuceve i pocetne vrednosti
);

//ovde se smestaju greske koje imaju polja u formi
$formErrors = array();


//uvek se prosledjuje jedno polje koje je indikator da su podaci poslati sa forme
//odnosno da je korisnik pokrenuo neku akciju
if (isset($_POST["task"]) && $_POST["task"] == "insert") {
		if (isset($_POST["title"]) && $_POST["title"] !== '') {
		//Dodavanje parametara medju podatke u formi
		$formData["title"] = $_POST["title"];
		
		//Filtering 1
		$formData["title"] = trim($formData["title"]);
		
		
	} else {//Ovaj else ide samo ako je polje obavezno
		$formErrors["title"][] = "Polje title je obavezno";
	}
	
	
	//Ukoliko nema gresaka 
	if (empty($formErrors)) {
 
            $newSection = sectionsInsertOne($formData);
             $_SESSION['system_message'] = "Uspesno ste dodali sekciju vesti";
            header('Location: /crud-section-list.php');
            die();
            
	}
}










require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-section-insert.php';
require_once __DIR__ . '/views/layout/footer.php';

