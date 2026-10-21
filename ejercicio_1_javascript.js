function validarUsuario(nombre, correo, edad) {

    var errores = [];
    var esvalido = true;

    if (nombre == "") {
        esvalido = false;
        errores.push("el nombre no puede ir vacio");
    }

    if (edad < 18) {
        esvalido = false;
        errores.push("tienes que ser mayor de edad (18+");
    }

    if (  correo == "" || !correo.includes("@") || !correo.includes(".")) {
        esvalido = false;
        errores.push("el correo no parece valido");
    }

    return {valido:esvalido,errores:errores};
}

//casos de uso

console.log(validarUsuario("Juan", "juan@example.com", 20));
console.log(validarUsuario("Maria", "mariagmail.com", 17));
