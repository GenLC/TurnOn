

        function alerta() {

            Swal.fire
                ({
                    icon: 'success',
                    title: '¡Éxito!',
                    text: 'Acción realizada con éxito'
                })
        }

    function alertaError() {

            Swal.fire
                ({
                    icon: 'error',
                    title: '¡Error!',
                    text: 'Hubo un error! :('
                })
        }

function alertaErrorFormatoHorario() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error en el formato de horario!',
            text: 'El horario a ingrersar debe tener el siguiente formato: 18:30 o 7:00'
        })
}


function alertaErrorCompletarCampos() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Complete todos los campos!'
        })
}
function alertaErrorCalendario() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Seleccione una fecha posterior!'
        })
}
function alertaErrorFecha() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Error en la selección de la fecha!'
        })
}

function alertaErrorLogin() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Usuario y contraseña no coinciden'
        })
}

function alertaMailsCoincidencia() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Los mails deben ser iguales'
        })
}
function alertaContraseñaCoincidencia() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Las contraseñas no coinciden'
        })
}
function alertaContraseñaCambiada() {

    Swal.fire
        ({
            icon: 'success',
            title: '¡Éxito!',
            text: 'La contraseña fue cambiada'
        })
}

function alertaContraseñaCorta() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'La contraseña debe ser mayor a 6 caracteres'
        })
}
function alertaContraseñaIncorrecta() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'La contraseña es incorrecta'
        })
}


function alertaMailsFormato() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'El formato de mail no coincide'
        })
}

function alertaConfirmarCuenta() {

    Swal.fire
        ({
            icon: 'success',
            title: '¡Éxito!',
            text: 'Revisa la casilla de correo para confirmar la cuenta'
        })
}
function alertaTurnoConfirmado(){

    Swal.fire
        ({
            icon: 'success',
            title: '¡Éxito!',
            text: 'Turno confirmado, revisa tu lista de turnos'
        })
}
function alertaCorreoYaRegistrado() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Correo ya registrado'
        })
}


function
    alertaCaptchaIncorrecto() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Captcha incorrecto'
        })
}

function alertaCorreo() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Ingrese su direccion de correo'
        })
}



function alertaErrorTurnoSolicitado() {

    Swal.fire
        ({
            icon: 'error',
            title: '¡Error!',
            text: 'Ya solicito un turno'
        })
}

