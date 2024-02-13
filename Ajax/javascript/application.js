console.log("Hello from JavaScript!");

// const url = "https://api.github.com/users/dhh"
// fetch(url) // Make the HTTP request
//   .then(response => response.json()) // Wait for the response and parse it as JSON
//   .then((data) => {
//     console.log(data); // Wait for parsing, allowing us to manipulate the data
//   })

// console.log('hello')

const email = document.getElementById("email")
const password = document.getElementById("password")
const form = document.getElementById("form")

const signUp = (event) => {
  event.preventDefault()
  // console.log('hello')
  fetch("https://reqres.in/api/register", { // Second argument allows to precise verb, headers and body
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify({"email": email.value, "password": password.value})
  })
  .then(response => response.json()) // Wait for the response and parse it as JSON
  .then((data) => {
    console.log(data); // Wait for parsing, allowing us to manipulate the data
  })
}



form.addEventListener("submit", signUp)
