var validationApp = angular.module('validationApp', []);
// create angular controller
validationApp.controller('mainController', function ($scope) {
// function to submit the form after all validation has occurred
	$scope.submitForm = function (isValid) {
	    // check to make sure the form is completely valid
	    if (isValid) {
	    	const firstname = document.getElementById('firstname');
	        const lastname = document.getElementById('lastname');
	        const username = document.getElementById('username');
	        const email = document.getElementById('email');
	        const address = document.getElementById('address');
	        const coffeeItem = document.getElementById('coffeeItem');
	        const qtyItem = document.getElementById('qtyItem');
	        const zip = document.getElementById('zip');
	        const addBtn = document.getElementById('addBtn');
	
	        const database = firebase.database();
	        const usersRef = database.ref('users/');
	
	        // Add Data
	        addBtn.addEventListener('click', e => {
	            e.preventDefault();
	            const uid = usersRef.push().key
	            usersRef.child(uid).set({
	                firstname: firstname.value,
	                lastname: lastname.value,
	                username: username.value,
	                email: email.value,
	                address: address.value,
	                coffeeItem: coffeeItem.value,
	                qtyItem: qtyItem.value,
	                zip: zip.value
	            });
	            alert('Order Succeed, Thank you!'); 
	            reload_page();
	        });
	        function reload_page(){ 
	            window.location.reload(); 
	            }
	        
	    } else {
	    	alert('Fill this form with valid data!');
	        }
	    };
});