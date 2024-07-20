/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validateForm() {

    var fnameError = document.getElementById('fnameError');
    var lnameError = document.getElementById('lnameError');
    var emailError = document.getElementById('emailError');
    var phoneError = document.getElementById('phoneError');
    var addressError = document.getElementById('addressError');
    var stateError = document.getElementById('stateError');
    var districtError = document.getElementById('districtError');
    var cityError = document.getElementById('cityError');
    var zipError = document.getElementById('cityError');
    var despError = document.getElementById('despError');



    fnameError.textContent = '';
    lnameError.textContent = '';
    emailError.textContent = '';
    phoneError.textContent = '';
    addressError.textContent = '';
    stateError.textContent = '';
    districtError.textContent = '';
    cityError.textContent = '';
    zipError.textContent = '';
    despError.textContent = '';

    // Check if any error messages exist
    if (fnameError.textContent || emailError.textContent || phoneError.textContent || addressError.textContent || stateError || districtError ||
        cityError || zipError) {
        return false; // Prevent form submission
    }
    return true;

}
function validateFName() {
    var fname = document.getElementById('fname').value;
    var fnameError = document.getElementById('fnameError');
    fnameError.textContent = '';

    if (fname.trim() === "") {
        fnameError.textContent = 'Please enter the First Name';
    } else if (!/^[a-zA-Z]+$/.test(fname)) {
        fnameError.textContent = 'First name can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(fname)) {
        fnameError.textContent = "First name can't contain special characters";
    }

    // Real-time validation for name goes here
}
function validateLName() {
    var lname = document.getElementById('lname').value;
    var fnameError = document.getElementById('lnameError');
    fnameError.textContent = '';

    if (lname.trim() === "") {
        lnameError.textContent = 'Please enter the Last Name';
    } else if (!/^[a-zA-Z]+$/.test(lname)) {
        lnameError.textContent = 'Last name can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(lname)) {
        lnameError.textContent = "Last name can't contain special characters";
    }

    // Real-time validation for name goes here
}
function validateEmail() {
    var email = document.getElementById('email').value;
    var emailError = document.getElementById('emailError');
    emailError.textContent = '';

    if (email.trim() === '') {
        emailError.textContent = 'Please enter email';
    } else {
        var emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/;
        if (!emailRegex.test(email)) {
            emailError.textContent = 'Invalid email address format';
        }
    }
    // Real-time validation for email goes here
}

function validatePhone() {
    var phone = document.getElementById('phone').value;
    var phoneError = document.getElementById('phoneError');
    phoneError.textContent = '';

    if (!/^\d+$/.test(phone)) {
        phoneError.textContent = "Phone number can only contain digits";
    } else if (phone.length !== 10) {
        phoneError.textContent = "Phone number must contain exactly 10 digits";
    }
    // Real-time validation for phone goes here
}

function validateAddress() {
    var address = document.getElementById('address').value;
    var addressError = document.getElementById('addressError');
    addressError.textContent = '';

    if (address.trim() === '') {
        addressError.textContent = 'Please enter your address';
    } else if (address.length > 255) {
        addressError.textContent = "Address is too long";
    } else if (!/^[a-zA-Z0-9\s\-_,.#&]*$/.test(address)) {
        addressError.textContent = "Address can only contain digits, alphabets, special symbols, spaces, and some common punctuation";
    }
    // Real-time validation for address goes here
}
function validateState() {
    var state = document.getElementById('state').value;
    var stateError = document.getElementById('stateError');
    stateError.textContent = '';

    if (state.trim() === "") {
        stateError.textContent = 'Please enter the state';
    } else if (!/^[a-zA-Z]+$/.test(state)) {
        stateError.textContent = 'state name can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(state)) {
        stateError.textContent = "state name can't contain special characters";
    }

    // Real-time validation for name goes here
}
function validateDistrict() {
    var district = document.getElementById('district').value;
    var districtError = document.getElementById('districtError');
    districtError.textContent = '';

    if (district.trim() === "") {
        districtError.textContent = 'Please enter the district';
    } else if (!/^[a-zA-Z]+$/.test(district)) {
        districtError.textContent = 'district name can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(district)) {
        districtError.textContent = "district name can't contain special characters";
    }

    // Real-time validation for name goes here
}
function validateCity() {
    var city = document.getElementById('city').value;
    var cityError = document.getElementById('cityError');
    cityErrorError.textContent = '';

    if (city.trim() === "") {
        cityError.textContent = 'Please enter the city';
    } else if (!/^[a-zA-Z]+$/.test(city)) {
        cityError.textContent = 'city name can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(city)) {
        cityError.textContent = "city name can't contain special characters";
    }

    // Real-time validation for name goes here
}
function validateZip() {
    var zip = document.getElementById('zip').value;
    var zipError = document.getElementById('zipError');
    zipError.textContent = '';

    if (!/^\d+$/.test(zip)) {
        zipError.textContent = "PinCode number can only contain digits";
    }
    // Real-time validation for phone goes here
}
function validateDesp() {
    var desp = document.getElementById('desp').value;
    var despError = document.getElementById('despError');
    despError.textContent = '';

    if (desp.trim() === "") {
        despError.textContent = 'Please describe the road condition';
    } else if (!/^[a-zA-Z]+$/.test(desp)) {
        despError.textContent = 'Description can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(desp)) {
        despError.textContent = "Description  can't contain special characters";
    }
}
document.addEventListener('DOMContentLoaded', function () {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    var errorMessage = document.getElementById('error-message');

    function validateCheckboxes() {
        var checkedCheckboxes = document.querySelectorAll('input[type="checkbox"]:checked');
        errorMessage.textContent = checkedCheckboxes.length === 0 ? 'Please select at least one option' : '';
    }

    checkboxes.forEach(function (checkbox) {
        checkbox.oninput = validateCheckboxes;
    });
});
function validatemobile() {
    var mobile = document.getElementById('mobile').value;
    var mobileError = document.getElementById('mobileError');
    mobileError.textContent = '';

    if (!/^\d+$/.test(mobile)) {
        mobileError.textContent = "Phone number can only contain digits";
    } else if (mobile.length !== 10) {
        mobileError.textContent = "Phone number must contain exactly 10 digits";
    }
    // Real-time validation for phone goes here
}
function validateemail() {
    var Email = document.getElementById('Email').value;
    var EmailError = document.getElementById('EmailError');
    EmailError.textContent = '';

    if (Email.trim() === '') {
        EmailError.textContent = 'Please enter email';
    } else {
        var EmailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/;
        if (!EmailRegex.test(Email)) {
            EmailError.textContent = 'Invalid email address format';
        }
    }
}
function validatecom() {
    var com = document.getElementById('com').value;
    var comError = document.getElementById('comError');
    comError.textContent = '';

    if (com.trim() === "") {
        comError.textContent = 'Please add the comments';
    } else if (!/^[a-zA-Z]+$/.test(com)) {
        comError.textContent = 'comments can only contain alphabetic characters';
    } else if (/[^a-zA-Z\s-]/.test(com)) {
        comError.textContent = "comments  can't contain special characters";
    }
}