// Include the jsPDF library
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>

// Get the data from the HTML file
const carName = document.getElementById("car-name").textContent;
const carNumber = document.getElementById("car-number").textContent;
const spaceNumber = document.getElementById("space-number").textContent;

// Create a new jsPDF object
const doc = new jsPDF();

// Add the data to the PDF document
doc.text(`Car Name: ${carName}`, 10, 10);
doc.text(`Car Number: ${carNumber}`, 10, 20);
doc.text(`Space Number: ${spaceNumber}`, 10, 30);

// Save the PDF document
doc.save('car-details.pdf');
