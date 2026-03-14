<?php
$serveur = "localhost";
$utilisateur = "root";  
$mot_de_passe = "";     
$base_de_donnees = "supercar"; 


$connexion = new mysqli($serveur, $utilisateur, $mot_de_passe, $base_de_donnees);

// Vérifier la connexion
if ($connexion->connect_error) {
    die("Erreur de connexion : " . $connexion->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom             = $_POST["nom"];
    $prenom          = $_POST["prenom"];
    $email           = $_POST["email"];
    $nom_utilisateur = $_POST["nom_utilisateur"];
    $mot_de_passe    = $_POST["mot_de_passe"];

    $sql = "INSERT INTO utilisateur (nom, prenom, email, nom_utilisateur, mot_de_passe) 
            VALUES ('$nom', '$prenom', '$email', '$nom_utilisateur', '$mot_de_passe')";

    if ($connexion->query($sql) === TRUE) {
        header("Location:dash.inscri.php");
    } else {
        echo "Erreur : " . $connexion->error;
    }
}

// Fermer la connexion
$connexion->close();
?>
