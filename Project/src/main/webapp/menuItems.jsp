<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Items - SpiceDelight</title>
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

        .user-profile {
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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .page-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 0;
        }

        .menu-count {
            background: var(--primary-color);
            color: white;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: 600;
        }

        .search-section {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .search-box {
            position: relative;
            max-width: 500px;
            margin: 0 auto;
        }

        .search-box input {
            width: 100%;
            padding: 12px 50px 12px 20px;
            border: 2px solid #ddd;
            border-radius: 25px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .search-box input:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(255, 107, 53, 0.25);
        }

        .search-box button {
            position: absolute;
            right: 5px;
            top: 50%;
            transform: translateY(-50%);
            background: var(--primary-color);
            border: none;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .category-filters {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 20px;
        }

        .category-btn {
            background: var(--light-color);
            border: 2px solid transparent;
            color: var(--dark-color);
            padding: 8px 16px;
            border-radius: 20px;
            font-weight: 500;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .category-btn:hover, .category-btn.active {
            background: var(--primary-color);
            color: white;
            border-color: var(--primary-color);
        }

        .dishes-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
            margin-bottom: 30px;
        }

        .dish-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            border: 1px solid #eee;
        }

        .dish-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.15);
        }

        .dish-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 3px solid var(--primary-color);
        }

        .dish-content {
            padding: 20px;
        }

        .dish-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 10px;
        }

        .dish-name {
            color: var(--dark-color);
            font-weight: 700;
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .dish-price {
            color: var(--secondary-color);
            font-weight: 700;
            font-size: 1.3rem;
        }

        .dish-category {
            background: var(--light-color);
            color: var(--dark-color);
            padding: 4px 12px;
            border-radius: 15px;
            font-size: 0.8rem;
            font-weight: 500;
        }

        .dish-description {
            color: #666;
            font-size: 0.9rem;
            line-height: 1.5;
            margin-bottom: 15px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .dish-actions {
            display: flex;
            gap: 10px;
            margin-top: 15px;
        }

        .btn-buy-now {
            background: linear-gradient(135deg, #28a745, #20c997);
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: 600;
            flex: 1;
            transition: all 0.3s ease;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .btn-buy-now:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.4);
            color: white;
        }

        .btn-favorite {
            background: var(--light-color);
            border: 2px solid #ddd;
            color: var(--dark-color);
            width: 45px;
            height: 45px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
        }

        .btn-favorite:hover {
            background: #ff6b6b;
            border-color: #ff6b6b;
            color: white;
        }

        .availability-badge {
            position: absolute;
            top: 15px;
            right: 15px;
            background: rgba(0,0,0,0.7);
            color: white;
            padding: 5px 10px;
            border-radius: 12px;
            font-size: 0.7rem;
            font-weight: 600;
        }

        .available {
            background: rgba(40, 167, 69, 0.9);
        }

        .not-available {
            background: rgba(220, 53, 69, 0.9);
        }

        .no-dishes {
            text-align: center;
            padding: 60px 20px;
            color: #666;
        }

        .no-dishes i {
            font-size: 4rem;
            color: #ddd;
            margin-bottom: 20px;
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

            .dishes-grid {
                grid-template-columns: 1fr;
            }

            .page-header {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar Navigation -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h3 class="sidebar-title"><i class="fas fa-utensils me-2"></i>SpiceDelight</h3>
        </div>
        <ul class="sidebar-menu">
            <li><a href="userDashBord.jsp"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>
            <li><a href="redirectToMenuItems" class="active"><i class="fas fa-utensils"></i> <span>Menu Items</span></a></li>
        </ul>
    </div>

    <!-- Top Navigation Bar -->
    <div class="top-navbar">
        <div class="brand-logo">Our Menu</div>
        <div class="user-profile">
            <img src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80"
                 alt="Profile" class="profile-img">
            <span>Hello, <strong>${userName}</strong></span>
            <a href="logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Page Header -->
        <div class="page-header">
            <h1 class="page-title">Delicious Menu</h1>
            <div class="menu-count">
                <i class="fas fa-utensils me-2"></i>${dishesList.size()} Items
            </div>
        </div>

        <!-- Search and Filter Section -->
        <div class="search-section">
            <div class="search-box">
                <input type="text" id="searchInput" placeholder="Search for dishes...">
                <button type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
            <div class="category-filters">
                <button class="category-btn active" data-category="all">All</button>
                <button class="category-btn" data-category="Starters">Starters</button>
                <button class="category-btn" data-category="Main Course">Main Course</button>
                <button class="category-btn" data-category="Biryani">Biryani</button>
                <button class="category-btn" data-category="Breads">Breads</button>
                <button class="category-btn" data-category="Desserts">Desserts</button>
                <button class="category-btn" data-category="Beverages">Beverages</button>
            </div>
        </div>

        <!-- Dishes Grid -->
        <div class="dishes-grid" id="dishesGrid">
            <c:choose>
                <c:when test="${not empty dishesList}">
                    <c:forEach var="dish" items="${dishesList}">
                        <c:if test="${dish.available}">
                            <div class="dish-card" data-category="${dish.category}">
                                <div class="position-relative">
                                    <img src="${dish.imageUrl}"
                                         alt="${dish.name}"
                                         class="dish-image"
                                         onerror="this.src='https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80'">
                                    <span class="availability-badge available">Available</span>
                                </div>
                                <div class="dish-content">
                                    <div class="dish-header">
                                        <h3 class="dish-name">${dish.name}</h3>
                                        <div class="dish-price">&#8377;${dish.price}</div>
                                    </div>
                                    <div class="dish-category">${dish.category}</div>
                                    <p class="dish-description">${dish.description}</p>
                                    <div class="dish-actions">
                                        <a href="${dish.buyUrl}" target="_blank" class="btn-buy-now">
                                            <i class="fas fa-external-link-alt me-2"></i>Buy Now
                                        </a>
                                        <button class="btn-favorite">
                                            <i class="far fa-heart"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="no-dishes">
                        <i class="fas fa-utensils"></i>
                        <h3>No Dishes Available</h3>
                        <p>We're currently updating our menu. Please check back later!</p>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <!-- Footer -->
    <footer class="dashboard-footer">
        <div class="footer-content">
            <div class="copyright">
                &copy; 2023 SpiceDelight. All Rights Reserved.
            </div>
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // Search functionality
        document.getElementById('searchInput').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const dishes = document.querySelectorAll('.dish-card');

            dishes.forEach(dish => {
                const dishName = dish.querySelector('.dish-name').textContent.toLowerCase();
                const dishDescription = dish.querySelector('.dish-description').textContent.toLowerCase();
                const dishCategory = dish.querySelector('.dish-category').textContent.toLowerCase();

                if (dishName.includes(searchTerm) || dishDescription.includes(searchTerm) || dishCategory.includes(searchTerm)) {
                    dish.style.display = 'block';
                } else {
                    dish.style.display = 'none';
                }
            });
        });

        // Category filter functionality
        document.querySelectorAll('.category-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                // Remove active class from all buttons
                document.querySelectorAll('.category-btn').forEach(b => b.classList.remove('active'));
                // Add active class to clicked button
                this.classList.add('active');

                const category = this.getAttribute('data-category');
                const dishes = document.querySelectorAll('.dish-card');

                dishes.forEach(dish => {
                    if (category === 'all' || dish.getAttribute('data-category') === category) {
                        dish.style.display = 'block';
                    } else {
                        dish.style.display = 'none';
                    }
                });
            });
        });

        // Favorite functionality
        document.querySelectorAll('.btn-favorite').forEach(btn => {
            btn.addEventListener('click', function() {
                const icon = this.querySelector('i');
                if (icon.classList.contains('far')) {
                    icon.classList.remove('far');
                    icon.classList.add('fas');
                    this.style.background = '#ff6b6b';
                    this.style.borderColor = '#ff6b6b';
                    this.style.color = 'white';
                } else {
                    icon.classList.remove('fas');
                    icon.classList.add('far');
                    this.style.background = 'var(--light-color)';
                    this.style.borderColor = '#ddd';
                    this.style.color = 'var(--dark-color)';
                }
            });
        });

        // Image error handling
        document.addEventListener('DOMContentLoaded', function() {
            const images = document.querySelectorAll('.dish-image');
            images.forEach(img => {
                img.addEventListener('error', function() {
                    this.src = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80';
                });
            });
        });
    </script>
</body>
</html>