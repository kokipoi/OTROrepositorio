<?php

include 'conexion.php';
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];

$ingrese_login = mysqli_query($conexion,"SELECT * from cliente2 where correo='$correo' and contraseña='$contraseña'");

if(mysqli_num_rows($ingrese_login)>0){
    echo'
        <script>
        alert("Bienvenido a La Casa Patitas ");
        window.location = "algo.html";
        </script>
    ';
}else{
    echo'
        <script>
        alert("Correo o contrasena incorrectos. Intente denuevo");
        window.location = "logear.html";
        
        </script>
    ';
}




?>