<?php
	$host = "localhost";// var host =  "localhost";
	$user = "root"; // var user = "root";
	$password = "";// var password = "";
	$database = "mydb";// var datbase = "mydb";
	/*try{ // essaiye ca si ca ne fonctionne pas alors fait le catch
		$conn =  mysqli_connect($host, $user, $password, $database); // permet de sauvegarder les requetes, il reprend  les 4 variables
		if(!$conn){
			die ("Error 502 -".mysqli_connect_errno());// die = on coupe la! on n epeut par revenir en arriere 
		}
	}catch(){ 

	}*/
	$conn =  mysqli_connect($host, $user, $password, $database); // permet de sauvegarder les requetes, il reprend  les 4 variables
	//var_dump($result); // pour afficher un tableau	


	// if(mysqli_num_rows($result) > 0){
	// 	while($row = mysqli_fetch_assoc($result)){
	// 		echo "modele : ". $row["modele"]."<br>";
	// 	}	
	// }
	

	// if(mysqli_query($conn,$sql)){
	// 	echo "Ajout Ok";
	// }

	/************ REQUETE 1 ****************/
	// Affiche tous les modèles
	
	$sql = "SELECT * FROM `affichagemodele`";
	$result = mysqli_query($conn, $sql);
	var_dump($result);

	/************* REQUETE 2 ****************/
	// Affiche toutes les agences
	
	$sql = "SELECT * FROM `affichageagence`";
	$result = mysqli_query($conn, $sql);
	var_dump($result);

	/************* REQUETE 3 ****************/
	//


	/************* REQUETE 4 ****************/
	// 

	/************* REQUETE 5 ****************/
	// Insert le modèle choisi, le lieu de prise et de retour et les dates dans la table contrat de réservation


	/************* REQUETE 6 ****************/
	// Afficher modèle de voiture et image correspondante
	// Afficher date et lieu de prise et retour du véhicule
	$sql = "SELECT `modele`,`photo`, `date_debut_periode`,`date_fin_periode`,`agence_idagencealler`,`agence_idagenceretour`FROM `vehicule`, `contrat_de_reservation`";
	$result = mysqli_query($conn, $sql);
	var_dump($result);

	/************* REQUETE 7 ****************/
	// Insert nom prenom tel mail adresse ville et code postal
	$sql = "INSERT INTO `client`(`nom`, `prenom`, `adresse`, `code postal`, `tel`, `Email`, `age`) VALUES ('nom', 'prenom', 'adresse', 'codepostal', 'tel', 'email', 'age')";
?>