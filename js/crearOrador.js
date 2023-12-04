const submitBtn = document.getElementById("submitBtn");
const form = document.getElementById("oradorForm");
const successAlert = document.getElementById("successAlert");
const errorAlert = document.getElementById("errorAlert");

form.addEventListener("submit", (event) => {
  event.preventDefault();

  const nuevoOrador = {
    nombre: document.getElementById("nombre").value,
    apellido: document.getElementById("apellido").value,
    email: document.getElementById("email").value,
    tema: document.getElementById("tema").value,
  };

  var datos = new FormData(form);

  fetch("http://localhost:8080/api/orador/nuevo", {
    method: "POST",
    body: new URLSearchParams(datos).toString(),
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  })
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      successAlert.classList.remove("d-none");
      errorAlert.classList.add("d-none");
      autocloseAlert();
      console.log(data);
      form.reset();
    })
    .catch((err) => {
      successAlert.classList.add("d-none");
      errorAlert.classList.remove("d-none");
      autocloseAlert();
      console.log(err);
    });
});

const autocloseAlert = () => {
  window.setTimeout(() => {
    successAlert.classList.add("d-none");
    errorAlert.classList.add("d-none");
  }, 3000);
};
