<?php

echo var_dump($_POST);

 if(isset($_POST['firstname']) AND (isset($_POST['lastname'])) AND (isset($_POST['tel'])) AND (isset($_POST['email'])) AND (isset($_POST['message']))=== TRUE) {
	$handle = fopen('fichier.txt', "a+"); 
	fputs($handle, $_POST['firstname']);
	fputs($handle, $_POST['lastname']);
	fputs($handle, $_POST['tel']);
	fputs($handle, $_POST['email']);
	fputs($handle, $_POST['message']);
	fclose($handle);
}
?>
