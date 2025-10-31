<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Dishes - SpiceDelight Admin</title>
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
            --sidebar-width: 250px;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        /* Top Navigation */
        .top-navbar {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 15px 30px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            top: 0;
            right: 0;
            left: var(--sidebar-width);
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .brand-logo {
            font-weight: 700;
            font-size: 1.5rem;
        }

        .admin-profile {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .profile-img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid white;
        }

        .logout-btn {
            background: rgba(255,255,255,0.2);
            border: 1px solid rgba(255,255,255,0.3);
            color: white;
            padding: 6px 15px;
            border-radius: 20px;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .logout-btn:hover {
            background: rgba(255,255,255,0.3);
            color: white;
        }

        /* Sidebar */
        .sidebar {
            background: var(--dark-color);
            color: white;
            width: var(--sidebar-width);
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
            box-shadow: 2px 0 10px rgba(0,0,0,0.1);
        }

        .sidebar-header {
            padding: 0 20px 20px;
            border-bottom: 1px solid #444;
            margin-bottom: 20px;
        }

        .sidebar-title {
            font-weight: 600;
            font-size: 1.2rem;
            color: var(--primary-color);
        }

        .sidebar-menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar-menu li {
            margin-bottom: 5px;
        }

        .sidebar-menu a {
            display: flex;
            align-items: center;
            padding: 12px 20px;
            color: #ddd;
            text-decoration: none;
            transition: all 0.3s ease;
            border-left: 3px solid transparent;
        }

        .sidebar-menu a:hover, .sidebar-menu a.active {
            background: rgba(255,255,255,0.1);
            color: white;
            border-left: 3px solid var(--primary-color);
        }

        .sidebar-menu i {
            margin-right: 10px;
            width: 20px;
            text-align: center;
        }

        /* Main Content */
        .main-content {
            margin-left: var(--sidebar-width);
            margin-top: 70px;
            padding: 30px;
            min-height: calc(100vh - 150px);
        }

        .page-header {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .page-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 0;
        }

        .add-dish-container {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }

        .form-label {
            font-weight: 600;
            color: var(--dark-color);
            margin-bottom: 8px;
        }

        .form-control, .form-select {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 12px 15px;
            transition: all 0.3s ease;
        }

        .form-control:focus, .form-select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(255, 107, 53, 0.25);
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

        .alert {
            border-radius: 10px;
            border: none;
        }

        .alert-success {
            background: rgba(40, 167, 69, 0.1);
            color: #155724;
        }

        .alert-danger {
            background: rgba(220, 53, 69, 0.1);
            color: #721c24;
        }

        .form-section {
            margin-bottom: 25px;
            padding-bottom: 25px;
            border-bottom: 1px solid #eee;
        }

        .form-section:last-child {
            border-bottom: none;
            margin-bottom: 0;
            padding-bottom: 0;
        }

        .section-title {
            color: var(--dark-color);
            font-weight: 600;
            margin-bottom: 20px;
            font-size: 1.1rem;
        }

        /* Footer */
        .dashboard-footer {
            background: var(--dark-color);
            color: white;
            padding: 20px 30px;
            margin-left: var(--sidebar-width);
            text-align: center;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links a {
            color: #ddd;
            text-decoration: none;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: var(--primary-color);
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 70px;
                overflow: hidden;
            }

            .sidebar-title, .sidebar-menu span {
                display: none;
            }

            .sidebar-menu a {
                justify-content: center;
                padding: 15px;
            }

            .sidebar-menu i {
                margin-right: 0;
                font-size: 1.2rem;
            }

            .top-navbar, .main-content, .dashboard-footer {
                margin-left: 70px;
            }

            .footer-content {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar Navigation -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h3 class="sidebar-title"><i class="fas fa-user-shield me-2"></i>Admin Panel</h3>
        </div>
        <ul class="sidebar-menu">
            <li><a href="adminDashBord.jsp"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>
            <li><a href="redirectToUser"><i class="fas fa-users"></i> <span>View Users</span></a></li>
            <li><a href="redirectToAddDishes" class="active"><i class="fas fa-utensils"></i> <span>Add Dishes</span></a></li>
            <li><a href="redirectToViewDishes"><i class="fas fa-shopping-cart"></i> <span>View Dishes</span></a></li>
        </ul>
    </div>

    <!-- Top Navigation Bar -->
    <div class="top-navbar">
        <div class="brand-logo">Add New Dish</div>
        <div class="admin-profile">
            <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80"
                 alt="Admin Profile" class="profile-img">
            <span>Hello, <strong>${adminName}</strong></span>
            <a href="logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Page Header -->
        <div class="page-header">
            <h1 class="page-title">Add New Dish to Menu</h1>
        </div>

        <!-- Success/Error Messages -->
        <c:if test="${not empty successMessage}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="fas fa-check-circle me-2"></i>${successMessage}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </c:if>

        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <i class="fas fa-exclamation-circle me-2"></i>${errorMessage}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </c:if>

        <!-- Add Dish Form -->
        <div class="add-dish-container">
            <form action="addDish" method="post" >
                <!-- Basic Information Section -->
                <div class="form-section">
                    <h3 class="section-title"><i class="fas fa-info-circle me-2"></i>Basic Information</h3>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label">Dish Name *</label>
                            <input type="text" class="form-control" id="name" name="name" required
                                   placeholder="Enter dish name (e.g., Butter Chicken)">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="category" class="form-label">Category *</label>
                            <select class="form-select" id="category" name="category" required>
                                <option value="">Select Category</option>
                                <option value="Starters">Starters</option>
                                <option value="Main Course">Main Course</option>
                                <option value="Biryani">Biryani</option>
                                <option value="Breads">Breads</option>
                                <option value="Desserts">Desserts</option>
                                <option value="Beverages">Beverages</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Pricing & Availability Section -->
                <div class="form-section">
                    <h3 class="section-title"><i class="fas fa-tag me-2"></i>Pricing & Availability</h3>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="price" class="form-label">Price  &#8377 </i> *</label>
                            <input type="number" class="form-control" id="price" name="price"
                                   step="0.01" min="0" required placeholder="Enter price in INR">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Availability *</label>
                            <div class="form-check mt-2">
                                <input class="form-check-input" type="radio" name="available" id="availableYes" value="true" checked>
                                <label class="form-check-label" for="availableYes">
                                    Available
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="available" id="availableNo" value="false">
                                <label class="form-check-label" for="availableNo">
                                    Not Available
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Platform Purchase Link Section -->
                <div class="form-section">
                    <h3 class="section-title"><i class="fas fa-shopping-cart me-2"></i>Purchase Platform</h3>
                    <div class="mb-3">
                        <label for="buyUrl" class="form-label">Purchase URL *</label>
                        <input type="url" class="form-control" id="buyUrl" name="buyUrl"
                               required placeholder="Enter purchase link (e.g., https://example.com/buy-dish)">
                        <div class="form-text">Provide the direct link where users can purchase this dish</div>
                    </div>
                </div>

                <!-- Description Section -->
                <div class="form-section">
                    <h3 class="section-title"><i class="fas fa-align-left me-2"></i>Description</h3>
                    <div class="mb-3">
                        <label for="description" class="form-label">Dish Description *</label>
                        <textarea class="form-control" id="description" name="description"
                                  rows="4" required placeholder="Enter detailed description of the dish"></textarea>
                    </div>
                </div>

                <!-- Image Section -->
                <div class="form-section">
                    <h3 class="section-title"><i class="fas fa-image me-2"></i>Dish Image</h3>
                    <div class="mb-3">
                        <label for="imageUrl" class="form-label">Image URL *</label>
                        <input type="url" class="form-control" id="imageUrl" name="imageUrl"
                               required placeholder="Enter image URL (e.g., https://example.com/image.jpg)">
                        <div class="form-text">Provide a direct link to the dish image</div>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <input type="submit" class="btn btn-primary btn-lg" value="Add Dish to Menu">
                </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer class="dashboard-footer">
        <div class="footer-content">
            <div class="copyright">
                &copy; 2023 SpiceDelight Restaurant Management System. All Rights Reserved.
            </div>
            <div class="footer-links">
                <a href="#">Admin Guide</a>
                <a href="#">Support</a>
                <a href="#">System Status</a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // Form validation
        document.querySelector('form').addEventListener('submit', function(e) {
            const price = document.getElementById('price').value;
            const buyUrl = document.getElementById('buyUrl').value;

            if (price && parseFloat(price) <= 0) {
                e.preventDefault();
                alert('Price must be greater than 0');
                return false;
            }

            if (!buyUrl.startsWith('http://') && !buyUrl.startsWith('https://')) {
                e.preventDefault();
                alert('Please enter a valid URL starting with http:// or https://');
                return false;
            }
        });
    </script>
</body>
</html>