const hamburger = document.querySelector('.hamburger');
const linksContainer = document.querySelector('.links-container');
const navBarContainer = document.querySelector('.nav-bar-container');

hamburger.addEventListener("click", () => {
    linksContainer.classList.toggle("links-container_show");
    hamburger.classList.toggle("hamburger_show");
    navBarContainer.classList.toggle("nav-bar-container_show");
});