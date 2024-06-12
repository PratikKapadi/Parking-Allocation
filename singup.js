const form = document.querySelector('form');
const nameInput = document.getElementById('name');
const emailInput = document.getElementById('email');
const mobileInput = document.getElementById('mobile');
const passwordInput = document.getElementById('password');

form.addEventListener('submit', (event) => {
	event.preventDefault();
	
	const nameValue = nameInput.value.trim();
	const emailValue = emailInput.value.trim();
	const mobileValue = mobileInput.value.trim();
	const passwordValue = passwordInput.value.trim();

	if (nameValue === '') {
		alert('Please enter your name');
		return;
	}

	if (emailValue === '') {
		alert('Please enter your email address');
		return;
	}

	if (mobileValue === '') {
		alert('Please enter your mobile number');
		return;
	}

	if (passwordValue === '') {
		alert('Please enter a password');
		return;
	}

	form.submit();
});
