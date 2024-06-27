<?php
include 'conexion.php';
$email=$_POST("email");
$mensaje=$_POST("mensaje");

$inserts2 = "INSERT INTO contacto2 (email,mensaje)
            Values ('$email','$mensaje')";
$enviar_adopt2 = mysqli_query($conexion,$inserts2);
if($enviar_adopt2)
echo'<script>
    alert("Hemos recibido su mensaje exitosamente!! Gracias por contactarse.");
    window.location = "algo.html";
    </script>

'
?>




