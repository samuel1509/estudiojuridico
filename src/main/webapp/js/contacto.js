// Obtener el elemento textarea y el span donde se mostrará el recuento de palabras
var textarea = document.getElementById("textMensaje");
var resultado = document.getElementById("resultado");
function contarCaracteres() {
  // Obtener el contenido del textarea
  var texto = textarea.value;
  // Contar el número de caracteres, incluyendo espacios
  var numeroCaracteres = texto.length;
  // Mostrar el número de caracteres en el elemento span
  resultado.textContent = numeroCaracteres;
}

// Agregar un evento 'input' al textarea para contar las palabras mientras se escribe
textarea.addEventListener("keyup", contarCaracteres);



//funcion limpiar campos boton limpiar form
function limpiarCampos() {
  // Obtener el formulario por su ID
  var formulario = document.getElementById("formContacto");
  var btnLimpiar = document.getElementById("btnLimpiar");

  // Recorrer todos los elementos del formulario
  for (var i = 0; i < formulario.elements.length; i++) {
    var elemento = formulario.elements[i];

    // Verificar si el elemento es un input o un textarea
    if ((elemento.tagName === "INPUT"&&
        elemento.value!=="Enviar") || 
        elemento.tagName === "TEXTAREA") {
      // Limpiar el valor del campo
      elemento.value = "";
    }
  }
  contarCaracteres();
  formulario.elements[0].focus();
}
btnLimpiar.addEventListener("click", limpiarCampos);

//funcion para validar y enviar form por correo
var formContacto = document.getElementById("formContacto");

function validarYEnviarFormulario() {
  var nombre = document.getElementById("inputNombre").value;
  var apellido = document.getElementById("inputApellido").value;
  var email = document.getElementById("inputEmail").value;
  var telefono = document.getElementById("inputTelefono").value;
  var mensaje = document.getElementById("textMensaje").value;
  var emailRegex = /\S+@\S+\.\S+/;
  var telefonoRegex = /^\d{10}$/;

  if (nombre.trim() === "" || apellido.trim() === "") {
    alert("Por favor, complete los campos de nombre y apellido.");
    return false; // Detener el envío del formulario
  } else if (!emailRegex.test(email)) {
    alert("Por favor, ingrese un correo electrónico válido.");
    return false; // Detener el envío del formulario
  } else if (!telefonoRegex.test(telefono)) {
    alert("Por favor, ingrese un número de teléfono válido de 10 dígitos.");
    return false; // Detener el envío del formulario
  } else if (mensaje.trim() === "") {
    alert("Por favor, complete el campos de mensaje.");
    return false; // Detener el envío del formulario
  } else {
    // Aquí puedes agregar el código para enviar los datos a través de AJAX o realizar la acción deseada
    alert(
      "Sus datos fueron enviados correctamente. En breve nos catactaremos con ud"
    );
  }

  return true; // Permite el envío del formulario
}
formContacto.addEventListener("submit", validarYEnviarFormulario);



/*
// Obtener los valores actuales de los campos antes del envío del formulario
var nombre = document.getElementById("inputNombre").value;
var apellido = document.getElementById("inputApellido").value;
var email = document.getElementById("inputEmail").value;
var telefono = document.getElementById("inputTelefono").value;
var mensaje = document.getElementById("textMensaje").value;

// Restaurar los valores si la validación falla
function rescuperarValoresFormulario() {
  document.getElementById("nombre").value = nombreActual;
  document.getElementById("apellido").value = apellidoActual;
  document.getElementById("email").value = emailActual;
  document.getElementById("telefono").value = telefonoActual;
  document.getElementById("textMensaje").value = mensaje;
}

formContacto.addEventListener("reset", rescuperarValoresFormulario);
*/