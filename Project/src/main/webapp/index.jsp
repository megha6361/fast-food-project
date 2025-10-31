<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SpiceDelight - Authentic Indian Fast Food</title>
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

        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                        url('https://images.unsplash.com/photo-1565557623262-b51c2513a641?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1971&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 150px 0;
            text-align: center;
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero-subtitle {
            font-size: 1.3rem;
            margin-bottom: 30px;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            border: none;
            padding: 12px 30px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 107, 53, 0.4);
        }

        .section-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 50px;
            position: relative;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        }

        .food-card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            margin-bottom: 30px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .food-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }

        .food-card img {
            height: 200px;
            object-fit: cover;
        }

        .card-body {
            padding: 20px;
        }

        .price {
            color: var(--primary-color);
            font-weight: 700;
            font-size: 1.2rem;
        }

        .about-section {
            background-color: var(--light-color);
            padding: 100px 0;
        }

        .testimonial-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin: 20px 0;
        }

        .testimonial-text {
            font-style: italic;
            margin-bottom: 20px;
        }

        .footer {
            background: var(--dark-color);
            color: white;
            padding: 50px 0 20px;
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

        .offer-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: var(--primary-color);
            color: white;
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-utensils me-2"></i>SpiceDelight
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#menu">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonials">Testimonials</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-light text-dark ms-2" href="redirectToAdminLogin">Admin Login</a>
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

    <!-- Hero Section -->
    <section class="hero-section" id="home">
        <div class="container">
            <h1 class="hero-title">Fast Food Restaurant</h1>
            <p class="hero-subtitle">Experience the rich flavors of India with our quick, delicious, and affordable meals</p>
            <a href="#menu" class="btn btn-primary btn-lg">Explore Menu</a>
        </div>
    </section>

    <!-- Menu Section -->
    <section class="py-5" id="menu">
        <div class="container">
            <h2 class="text-center section-title">Our Popular Dishes</h2>
            <div class="row">
                <!-- Menu Item 1 -->
                <div class="col-md-4">
                    <div class="card food-card">
                        <div class="position-relative">
                            <img src="https://images.unsplash.com/photo-1565557623262-b51c2513a641?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="Butter Chicken">
                            <span class="offer-badge">Bestseller</span>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Butter Chicken</h5>
                            <p class="card-text">Tender chicken in a rich, creamy tomato sauce with aromatic spices.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">&#8377;320</span>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Menu Item 2 -->
                <div class="col-md-4">
                    <div class="card food-card">
                        <div class="position-relative">
                            <img src="https://images.unsplash.com/photo-1631452180519-c014fe946bc7?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="Biryani">
                            <span class="offer-badge">Popular</span>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Hyderabadi Biryani</h5>
                            <p class="card-text">Fragrant basmati rice cooked with tender meat and authentic spices.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">&#8377;280</span>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Menu Item 3 -->
                <div class="col-md-4">
                    <div class="card food-card">
                        <div class="position-relative">
                            <img src="https://images.unsplash.com/photo-1601050690597-df0568f70950?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="Paneer Tikka">
                            <span class="offer-badge">Vegetarian</span>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Paneer Tikka</h5>
                            <p class="card-text">Marinated cottage cheese grilled to perfection with spices.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">&#8377;240</span>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- More menu items would go here -->
            </div>

        </div>
    </section>

    <!-- About Section -->
    <section class="about-section" id="about">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2 class="section-title text-start">About SpiceDelight</h2>
                    <p>Founded in 2010, SpiceDelight has been serving authentic Indian fast food with a modern twist. Our chefs use traditional recipes passed down through generations, combined with fresh, high-quality ingredients.</p>
                    <p>We believe that good food brings people together, and our mission is to deliver the authentic taste of India to your table, quickly and affordably.</p>
                    <ul class="list-unstyled">
                        <li><i class="fas fa-check text-success me-2"></i> Fresh ingredients daily</li>
                        <li><i class="fas fa-check text-success me-2"></i> Traditional recipes</li>
                        <li><i class="fas fa-check text-success me-2"></i> Hygienic kitchen</li>
                        <li><i class="fas fa-check text-success me-2"></i> Quick service</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <img src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60" class="img-fluid rounded" alt="Restaurant Interior">
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-5" id="testimonials">
        <div class="container">
            <h2 class="text-center section-title">What Our Customers Say</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <p class="testimonial-text">"The best butter chicken I've ever had! The flavors are authentic and the service is quick. Highly recommended!"</p>
                        <div class="d-flex align-items-center">
                            <img src="https://randomuser.me/api/portraits/women/45.jpg" class="rounded-circle me-3" width="50" alt="Customer">
                            <div>
                                <h6 class="mb-0">Priya Sharma</h6>
                                <small>Regular Customer</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <p class="testimonial-text">"As someone from Hyderabad, I can vouch for the authenticity of their biryani. It tastes just like home!"</p>
                        <div class="d-flex align-items-center">
                            <img src="https://randomuser.me/api/portraits/men/32.jpg" class="rounded-circle me-3" width="50" alt="Customer">
                            <div>
                                <h6 class="mb-0">Rahul Verma</h6>
                                <small>Food Blogger</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <p class="testimonial-text">"Great quality food at reasonable prices. The paneer tikka is my favorite - perfectly grilled and flavorful."</p>
                        <div class="d-flex align-items-center">
                            <img src="https://randomuser.me/api/portraits/women/68.jpg" class="rounded-circle me-3" width="50" alt="Customer">
                            <div>
                                <h6 class="mb-0">Anjali Patel</h6>
                                <small>Local Guide</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="py-5 bg-light" id="contact">
        <div class="container">
            <h2 class="text-center section-title">Contact Us</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <h5><i class="fas fa-map-marker-alt text-primary me-2"></i> Address</h5>
                        <p>123 Food Street, Connaught Place, New Delhi, India - 110001</p>
                    </div>
                    <div class="mb-3">
                        <h5><i class="fas fa-phone text-primary me-2"></i> Phone</h5>
                        <p>+91 98765 43210</p>
                    </div>
                    <div class="mb-3">
                        <h5><i class="fas fa-envelope text-primary me-2"></i> Email</h5>
                        <p>info@spicedelight.com</p>
                    </div>
                    <div class="mb-3">
                        <h5><i class="fas fa-clock text-primary me-2"></i> Opening Hours</h5>
                        <p>Monday - Sunday: 10:00 AM - 11:00 PM</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <form>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Subject" required>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" rows="5" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
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
                        <li><a href="#home">Home</a></li>
                        <li><a href="#menu">Menu</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
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

    <!-- Custom JS -->
    <script>
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Add to cart functionality
        document.querySelectorAll('.btn-primary').forEach(button => {
            if(button.textContent === 'Add to Cart') {
                button.addEventListener('click', function() {
                    const foodItem = this.closest('.card').querySelector('.card-title').textContent;
                    alert(`${foodItem} added to cart!`);
                });
            }
        });

        // Form submission
        document.querySelector('form').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your message! We will get back to you soon.');
            this.reset();
        });
    </script>
</body>
</html>