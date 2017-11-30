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
    'password' => $user['password'],
    'confirm_password' => ''
    
);

//ovde se smestaju greske koje imaju polja u formi
$formErrors = array();

if (isset($_POST["task"]) && $_POST["task"] == "save") {
 if (isset($_POST["password"]) && $_POST["password"] !== '') {
        //Dodavanje parametara medju podatke u formi
        $formData["password"] = $_POST["password"];
        $formData["password"] = md5($_POST["password"]);
 }
 if (isset($_POST["confirm_password"]) && $_POST["confirm_password"] !== '') {
        //Dodavanje parametara medju podatke u formi
        $formData["confirm_password"] = $_POST["confirm_password"];
        $formData["confirm_password"] = md5($_POST["confirm_password"]);
        if ($formData['confirm_password'] != $formData['password']) {
            $formErrors["confirm_password"][] = "Uneti passwordi nisu identicni";
        }
 }
    //Ukoliko nema gresaka 
    if (empty($formErrors)) {
        //Uradi akciju koju je korisnik trazio
        unset($formData['confirm_password']);                                         
        usersUpdateOneById($user['id'], $formData);
          
         $_SESSION['logged_in_user']['password'] = ($formData['password']);
         $_SESSION['system_message'] = "Uspesno ste promenili password";
         
        
           
        header('Location: /crud-user-list.php');

        die();
    }
}
require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_profile-change-password.php';
require_once __DIR__ . '/views/layout/footer.php';
