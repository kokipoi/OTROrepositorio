

function validarFormulario() {
    var rut = document.getElementById("rut").value.trim();
    var apellidoPaterno = document.getElementById("apellido_paterno").value.trim();
    var apellidoMaterno = document.getElementById("apellido_materno").value.trim();
    var nombre = document.getElementById("nombre").value.trim();
    var edad = parseInt(document.getElementById("edad").value.trim(), 10);
    var genero = document.getElementById("genero").value;
    var celular = document.getElementById("celular").value.trim();

    var errores = [];

    // Validación de RUT
    if (rut.length < 9 || rut.length > 10) {
        errores.push("El RUT debe tener entre 9 y 10 caracteres.");
    }

    if (nombre.length < 3 || nombre.length > 20) {
        errores.push("El nombre debe tener entre 3 y 20 caracteres.");
    }

    if (apellidoPaterno.length < 3 || apellidoPaterno.length > 20) {
        errores.push("El apellido paterno debe tener entre 3 y 20 caracteres.");
    }

    if (apellidoMaterno.length < 3 || apellidoMaterno.length > 20) {
        errores.push("El apellido materno debe tener entre 3 y 20 caracteres.");
    }

    if (isNaN(edad) || edad < 18 || edad > 90) {
        errores.push("La edad debe estar entre 18 y 35 años.");
    }

    if (genero === "") {
        errores.push("Debe seleccionar un género.");
    }

    if (celular.length < 9 || celular.length > 12) {
        errores.push("El número de celular debe tener entre 9 y 12 caracteres.");
    }

    if (errores.length > 0) {
        mostrarErrores(errores);
        return false;
    }

    return true;
}

function mostrarErrores(errores) {
    var mensaje = "Por favor, corrija los siguientes errores:\n\n";
    errores.forEach(function(error) {
        mensaje += "- " + error + "\n";
    });
    alert(mensaje);
}

function mostrarNotificacion() {
    alert("¡El formulario ha sido enviado con éxito!");
}

    document.getElementById("enviar").addEventListener("click", function(event) {
        if (validarFormulario(errores=0)) {
            mostrarNotificacion();
            
        }
    });

