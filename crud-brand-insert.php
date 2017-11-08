<?php
session_start();
require_once __DIR__ . '/models/m_brands.php';



$formData = array(
	'title' => '',
        'website_url' => ''
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
        if (isset($_POST["website_url"]) && $_POST["website_url"] !== '') {
		//Dodavanje parametara medju podatke u formi
		$formData["website_url"] = $_POST["website_url"];
		
		//Filtering 1
		$formData["website_url"] = trim($formData["website_url"]);
		//Filtering 2
		
		
	} 

	//Ukoliko nema gresaka 
	if (empty($formErrors)) {
                
            brandsInsertOne($formData);
            
            header('Location: /crud-brand-list.php');
            die();
	 }
  }

require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-brand-insert.php';
require_once __DIR__ . '/views/layout/footer.php';
