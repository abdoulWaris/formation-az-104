const button = document.getElementById("discoverBtn");

button.addEventListener("click", () => {

    alert("Bienvenue sur votre site hébergé sur Azure Storage !");

});

document.querySelector("form").addEventListener("submit", function(e){

    e.preventDefault();

    alert("Le formulaire est une démonstration.");

});