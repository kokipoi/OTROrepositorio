<?php

include 'conexion.php';
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];

$ingrese_login = mysqli_query($conexion,"SELECT * from cliente2 where correo='$correo' and contraseña='$contraseña'");

if(mysqli_num_rows($ingrese_login)>0){
    echo'
        <script>
        alert("Ingresaste correctamente a La Casa Patitas como ");
        window.location = "algo.html";
        </script>
    ';
}else{
    echo'
        <script>
        alert("Usuario no encontrado");
        </script>
    ';
}




?>