<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - SpiceDelight</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #ff6b35;
            --secondary-color: #f7931e;
            --dark-color: #2c3e50;
            --light-color: #f8f9fa;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #fff;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .navbar-brand {
            font-weight: 700;
            font-size: 1.8rem;
        }

        .nav-link {
            color: white !important;
            font-weight: 500;
            margin: 0 10px;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            transform: translateY(-2px);
        }

        .register-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                        url('https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80');
            background-size: cover;
            background-position: center;
            padding: 80px 0;
            flex-grow: 1;
            display: flex;
            align-items: center;
        }

        .register-container {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            overflow: hidden;
            max-width: 800px;
            margin: 0 auto;
        }

        .register-image {
            background: url('https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80');
            background-size: cover;
            background-position: center;
            min-height: 500px;
        }

        .register-form {
            padding: 40px;
        }

        .register-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 30px;
            text-align: center;
            position: relative;
        }

        .register-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        }

        .form-label {
            font-weight: 500;
            color: var(--dark-color);
            margin-bottom: 8px;
        }

        .form-control {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 12px 15px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(255, 107, 53, 0.25);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            border: none;
            padding: 12px 30px;
            font-weight: 600;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 107, 53, 0.4);
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
        }

        .login-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #dc3545;
            font-size: 0.875rem;
            margin-top: 5px;
            display: none;
        }

        .footer {
            background: var(--dark-color);
            color: white;
            padding: 30px 0 15px;
            margin-top: auto;
        }

        .footer h5 {
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .footer a {
            color: #ddd;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: var(--primary-color);
        }

        .social-icons a {
            display: inline-block;
            margin-right: 15px;
            font-size: 1.2rem;
        }

        .copyright {
            border-top: 1px solid #444;
            padding-top: 20px;
            margin-top: 30px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .register-image {
                min-height: 200px;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <i class="fas fa-utensils me-2"></i>SpiceDelight
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#menu">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-outline-light ms-2" href="redirectToUserLogin">User Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-light text-dark ms-2" href="redirectToRegister">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Register Section -->
    <section class="register-section">
        <div class="container">
            <div class="register-container">
                <div class="row g-0">
                    <div class="col-md-6 d-none d-md-block">
                        <div class="register-image"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="register-form">
                            <h2 class="register-title">Create Account</h2>
                            <form action="register" method="post" id="registrationForm" novalidate>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="fName" class="form-label">First Name</label>
                                        <input type="text" class="form-control" name="firstName" id="fName" required>
                                        <div class="error-message" id="fNameError">Please enter your first name</div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="sName" class="form-label">Last Name</label>
                                        <input type="text" class="form-control" name="secondName" id="sName" required>
                                        <div class="error-message" id="sNameError">Please enter your last name</div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="pNumber" class="form-label">Phone Number</label>
                                    <input type="tel" class="form-control" name="phoneNumber" id="pNumber" required>
                                    <div class="error-message" id="pNumberError">Please enter a valid 10-digit phone number</div>
                                </div>

                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" name="email" id="email" required>
                                    <div class="error-message" id="emailError">Please enter a valid email address</div>
                                </div>

                                <div class="mb-3">
                                    <label for="psw" class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password" id="psw" required>
                                    <div class="error-message" id="pswError">Password must be at least 8 characters with letters and numbers</div>
                                </div>

                                <div class="mb-3">
                                    <label for="cpsw" class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" name="conformPassword" id="cpsw" required>
                                    <div class="error-message" id="cpswError">Passwords do not match</div>
                                </div>

                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="terms" required>
                                    <label class="form-check-label" for="terms">I agree to the <a href="#">Terms & Conditions</a></label>
                                    <div class="error-message" id="termsError">You must agree to the terms and conditions</div>
                                </div>

                                <button type="submit" class="btn btn-primary">Create Account</button>

                                <div class="login-link">
                                    Already have an account? <a href="redirectToUserLogin">Login here</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>SpiceDelight</h5>
                    <p>Authentic Indian fast food delivered with love and traditional flavors.</p>
                    <div class="social-icons">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="index.html#menu">Menu</a></li>
                        <li><a href="index.html#about">About</a></li>
                        <li><a href="index.html#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>Contact Info</h5>
                    <ul class="list-unstyled">
                        <li><i class="fas fa-map-marker-alt me-2"></i> New Delhi, India</li>
                        <li><i class="fas fa-phone me-2"></i> +91 98765 43210</li>
                        <li><i class="fas fa-envelope me-2"></i> info@spicedelight.com</li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>Account</h5>
                    <ul class="list-unstyled">
                        <li><a href="redirectToUserLogin">User Login</a></li>
                        <li><a href="redirectToAdminLogin">Admin Login</a></li>
                        <li><a href="redirectToRegister">Register</a></li>
                        <li><a href="#">Track Order</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 SpiceDelight. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JS for Form Validation -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.getElementById('registrationForm');

            // Validation functions
            function validateFirstName() {
                const firstName = document.getElementById('fName');
                const error = document.getElementById('fNameError');

                if (firstName.value.trim() === '') {
                    showError(firstName, error, 'Please enter your first name');
                    return false;
                } else {
                    showSuccess(firstName, error);
                    return true;
                }
            }

            function validateLastName() {
                const lastName = document.getElementById('sName');
                const error = document.getElementById('sNameError');

                if (lastName.value.trim() === '') {
                    showError(lastName, error, 'Please enter your last name');
                    return false;
                } else {
                    showSuccess(lastName, error);
                    return true;
                }
            }

            function validatePhone() {
                const phone = document.getElementById('pNumber');
                const error = document.getElementById('pNumberError');
                const phoneRegex = /^[6-9]\d{9}$/; // Indian phone number format

                if (phone.value.trim() === '') {
                    showError(phone, error, 'Please enter your phone number');
                    return false;
                } else if (!phoneRegex.test(phone.value)) {
                    showError(phone, error, 'Please enter a valid 10-digit phone number');
                    return false;
                } else {
                    showSuccess(phone, error);
                    return true;
                }
            }

            function validateEmail() {
                const email = document.getElementById('email');
                const error = document.getElementById('emailError');
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (email.value.trim() === '') {
                    showError(email, error, 'Please enter your email address');
                    return false;
                } else if (!emailRegex.test(email.value)) {
                    showError(email, error, 'Please enter a valid email address');
                    return false;
                } else {
                    showSuccess(email, error);
                    return true;
                }
            }

            function validatePassword() {
                const password = document.getElementById('psw');
                const error = document.getElementById('pswError');
                const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$/;

                if (password.value.trim() === '') {
                    showError(password, error, 'Please enter a password');
                    return false;
                } else if (!passwordRegex.test(password.value)) {
                    showError(password, error, 'Password must be at least 8 characters with letters and numbers');
                    return false;
                } else {
                    showSuccess(password, error);
                    return true;
                }
            }

            function validateConfirmPassword() {
                const password = document.getElementById('psw');
                const confirmPassword = document.getElementById('cpsw');
                const error = document.getElementById('cpswError');

                if (confirmPassword.value.trim() === '') {
                    showError(confirmPassword, error, 'Please confirm your password');
                    return false;
                } else if (password.value !== confirmPassword.value) {
                    showError(confirmPassword, error, 'Passwords do not match');
                    return false;
                } else {
                    showSuccess(confirmPassword, error);
                    return true;
                }
            }

            function validateTerms() {
                const terms = document.getElementById('terms');
                const error = document.getElementById('termsError');

                if (!terms.checked) {
                    showError(terms, error, 'You must agree to the terms and conditions');
                    return false;
                } else {
                    showSuccess(terms, error);
                    return true;
                }
            }

            function showError(input, errorElement, message) {
                input.classList.add('is-invalid');
                input.classList.remove('is-valid');
                errorElement.textContent = message;
                errorElement.style.display = 'block';
            }

            function showSuccess(input, errorElement) {
                input.classList.remove('is-invalid');
                input.classList.add('is-valid');
                errorElement.style.display = 'none';
            }

            // Event listeners for real-time validation
            document.getElementById('fName').addEventListener('blur', validateFirstName);
            document.getElementById('sName').addEventListener('blur', validateLastName);
            document.getElementById('pNumber').addEventListener('blur', validatePhone);
            document.getElementById('email').addEventListener('blur', validateEmail);
            document.getElementById('psw').addEventListener('blur', validatePassword);
            document.getElementById('cpsw').addEventListener('blur', validateConfirmPassword);
            document.getElementById('terms').addEventListener('change', validateTerms);

            // Form submission
            form.addEventListener('submit', function(e) {
                e.preventDefault();

                const isFirstNameValid = validateFirstName();
                const isLastNameValid = validateLastName();
                const isPhoneValid = validatePhone();
                const isEmailValid = validateEmail();
                const isPasswordValid = validatePassword();
                const isConfirmPasswordValid = validateConfirmPassword();
                const isTermsValid = validateTerms();

                if (isFirstNameValid && isLastNameValid && isPhoneValid &&
                    isEmailValid && isPasswordValid && isConfirmPasswordValid && isTermsValid) {
                    // If all validations pass, submit the form
                    alert('Registration successful! Redirecting...');
                    form.submit();
                } else {
                    // Scroll to the first error
                    const firstError = document.querySelector('.is-invalid');
                    if (firstError) {
                        firstError.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    }
                }
            });
        });
    </script>
</body>
</html>