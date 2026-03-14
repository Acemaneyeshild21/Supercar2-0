<?php
 include ("db.php");

 $name = $_POST["nom"];
 $adresse = $_POST["adresse"];
 $email = $_POST["email"];
 $messages = $_POST["messages"];

 $ajouter = "insert into contacts (nom,adresse,email,messages) values
('$name','$adresse','$email','$messages')";

mysqli_query($bdd, $ajouter);
mysqli_close($bdd);
 ?>

 <!DOCTYPE HTML>
 <html lang=fr>
 <head>
 <meta charset = "UTF-8" />
 </head>
 <body>
 <p>
    <h2='center'> Merci. Vos données sont bien insérées !!! </h2>
    <h1><a href="index.html">Retour au menu principale</a></h1>
    </a></h2>
 </p>
 </body>
 </html>