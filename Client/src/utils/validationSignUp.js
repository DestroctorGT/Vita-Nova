//Creamos un objeto llamado error
let error = {};

let Upassword = "";

//Funcion encargada de validar los inputs del form.
export default function validateInputs(userInfo) {
  const regexPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/gm;

  if (userInfo.name === "userName") {
    if (userInfo.value.length <= 0) {
      error.userName = "El campo no puede estar vacio";
    } else {
      delete error.userName;
    }
  }

  if (userInfo.name === "password") {
    if (!regexPassword.test(userInfo.value)) {
      error.password = "Contraseña invalida";
    } else {
      Upassword = userInfo.value;
      delete error.password;
    }
  }

  if (userInfo.name === "checkPassword") {
    if (userInfo.value !== Upassword) {
      error.checkPassword = "La constraseña no coincide";
    } else {
      delete error.checkPassword;
    }
  }

  return error;
}
