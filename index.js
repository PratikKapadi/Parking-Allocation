// Code for responsive navigation menu
const menuIcon = document.querySelector('.menu-icon');
const menu = document.querySelector('nav ul');

menuIcon.addEventListener('click', () => {
  menu.classList.toggle('show');
});
