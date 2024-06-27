<?php
include 'conexion.php';
$rut = $_POST["rut"];
$nombre = $_POST["nombre"];
$apellido_materno = $_POST["apellido_materno"];
$apellido_paterno = $_POST["apellido_paterno"];
$edad = $_POST["edad"];
$email = $_POST["email"];
$celular = $_POST["celular"];

$inserts = "INSERT INTO form_adopt (rut,nombre,apellido_materno,apellido_paterno,edad,email,celular)
            Values ('$rut','$nombre','$apellido_materno','$apellido_paterno','$edad','$email','$celular')";
$enviar_adopt = mysqli_query($conexion,$inserts);
if($enviar_adopt)
echo'<script>
    alert("Formulario enviado correctamente! Espere nuestra respuesta");
    window.location = "algo.html";
    </script>

'




?>