

<?php

include 'conexion.php';
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];


$instruccion_SQL = "INSERT INTO cliente2 (correo,contraseña)
                        VALUES ('$correo','$contraseña')";

$verificar_correo = mysqli_query($conexion,"select * from cliente2 where correo ='$correo'");

if(mysqli_num_rows($verificar_correo)>0){
  echo '
        <script>
        alert("Este correo ya esta registrado, intente con uno diferente");
        window.location = "login.html";
        </script>
  ';
  exit();
}

$resultado = mysqli_query($conexion,$instruccion_SQL);

if($resultado)
  echo'
    <script>
    alert("Correo registrado correctamente");
    window.location = "logear.html";
    </script>
';
?>