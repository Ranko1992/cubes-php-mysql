<?php
session_start();
require_once __DIR__ . '/models/m_users.php';
require_once __DIR__ . '/models/m_users.php';

if (isset($_SESSION['logged_in_user'])) {
    $user = $_SESSION['logged_in_user'];
}

if (empty($user)) {
    die('Neispravan user');
}

$formData = array(
    'email' => $user['email'],
    'first_name' => $user['first_name'],
    'last_name' => $user['last_name']
);

//ovde se smestaju greske koje imaju polja u formi
$formErrors = array();


//uvek se prosledjuje jedno polje koje je indikator da su podaci poslati sa forme
//odnosno da je korisnik pokrenuo neku akciju
if (isset($_POST["task"]) && $_POST["task"] == "save") {

    if (isset($_POST["email"]) && $_POST["email"] !== '') {
        //Dodavanje parametara medju podatke u formi
        $formData["email"] = $_POST["email"];

        //Filtering 1
        $formData["email"] = trim($formData["email"]);
        //Filtering 2

        if (isset($_POST["first_name"]) && $_POST["first_name"] !== '') {
            //Dodavanje parametara medju podatke u formi
            $formData["first_name"] = $_POST["first_name"];

            //Filtering 1
            $formData["first_name"] = trim($formData["first_name"]);
        }

        if (isset($_POST["last_name"]) && $_POST["last_name"] !== '') {
            //Dodavanje parametara medju podatke u formi
            $formData["last_name"] = $_POST["last_name"];

            //Filtering 1
            $formData["last_name"] = trim($formData["last_name"]);
        }


        //Ukoliko nema gresaka 
        if (empty($formErrors)) {
            //Uradi akciju koju je korisnik trazio
            usersUpdateOneById($user['id'], $formData);
            $_SESSION['logged_in_user']['email'] = $formData['email'];
            $_SESSION['logged_in_user']['first_name'] = $formData['first_name'];
            $_SESSION['logged_in_user']['last_name'] = $formData['last_name'];
            
            
            header('Location: /profile-preview.php');
            $_SESSION['system_message'] = "Uspesno ste izmenili podatke";
            die();
        }
    }
}
require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_profile-edit.php';
require_once __DIR__ . '/views/layout/footer.php';
