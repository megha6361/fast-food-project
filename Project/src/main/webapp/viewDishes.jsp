<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Dishes - SpiceDelight Admin</title>
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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .page-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 0;
        }

        .dishes-count {
            background: var(--primary-color);
            color: white;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: 600;
        }

        .dishes-table-container {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .table-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-title {
            color: var(--dark-color);
            font-weight: 600;
            margin-bottom: 0;
        }

        .search-box {
            position: relative;
            width: 300px;
        }

        .search-box input {
            width: 100%;
            padding: 10px 15px 10px 40px;
            border: 1px solid #ddd;
            border-radius: 25px;
            font-size: 0.9rem;
        }

        .search-box i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #666;
        }

        .table {
            margin-bottom: 0;
        }

        .table thead th {
            background: var(--light-color);
            border-bottom: 2px solid var(--primary-color);
            color: var(--dark-color);
            font-weight: 600;
            padding: 15px;
            vertical-align: middle;
        }

        .table tbody td {
            padding: 15px;
            vertical-align: middle;
            border-color: #eee;
        }

        .table tbody tr:hover {
            background-color: rgba(255, 107, 53, 0.05);
        }

        .dish-image {
            width: 60px;
            height: 60px;
            border-radius: 8px;
            object-fit: cover;
            border: 2px solid var(--light-color);
        }

        .action-buttons {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .btn-sm {
            padding: 5px 10px;
            font-size: 0.8rem;
            white-space: nowrap;
        }

        .btn-edit {
            background: var(--primary-color);
            border: none;
            color: white;
        }

        .btn-delete {
            background: #dc3545;
            border: none;
            color: white;
        }

        .btn-availability {
            background: var(--secondary-color);
            border: none;
            color: white;
        }

        .availability-badge {
            padding: 4px 8px;
            border-radius: 12px;
            font-size: 0.75rem;
            font-weight: 600;
        }

        .available {
            background: #d4edda;
            color: #155724;
        }

        .not-available {
            background: #f8d7da;
            color: #721c24;
        }

        .price-tag {
            color: var(--secondary-color);
            font-weight: 700;
            font-size: 1.1rem;
        }

        .category-badge {
            background: var(--light-color);
            color: var(--dark-color);
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 0.75rem;
            font-weight: 500;
        }

        .no-dishes {
            text-align: center;
            padding: 40px;
            color: #666;
        }

        .no-dishes i {
            font-size: 3rem;
            color: #ddd;
            margin-bottom: 15px;
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

        /* Pagination */
        .pagination-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .pagination-info {
            color: #666;
            font-size: 0.9rem;
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

            .table-header {
                flex-direction: column;
                gap: 15px;
                align-items: flex-start;
            }

            .search-box {
                width: 100%;
            }

            .action-buttons {
                flex-direction: column;
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
            <li><a href="redirectToAddDishes"><i class="fas fa-utensils"></i> <span>Add Dishes</span></a></li>
            <li><a href="redirectToViewDishes" class="active"><i class="fas fa-shopping-cart"></i> <span>View Dishes</span></a></li>
        </ul>
    </div>

    <!-- Top Navigation Bar -->
    <div class="top-navbar">
        <div class="brand-logo">Menu Management</div>
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
            <h1 class="page-title">Menu Dishes</h1>
            <div class="dishes-count">
                <i class="fas fa-utensils me-2"></i>Total Dishes: ${dishesList.size()}
            </div>
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

        <!-- Dishes Table -->
        <div class="dishes-table-container">
            <div class="table-header">
                <h3 class="section-title">All Dishes</h3>
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search dishes...">
                </div>
            </div>

            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Dish Name</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Purchase URL</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="dishesTableBody">
                        <c:choose>
                            <c:when test="${not empty dishesList}">
                                <c:forEach var="dish" items="${dishesList}">
                                    <tr>
                                        <td>
                                            <img src="${dish.imageUrl}"
                                                 alt="${dish.name}"
                                                 class="dish-image"
                                                 onerror="this.src='https://via.placeholder.com/60x60?text=No+Image'">
                                        </td>
                                        <td>
                                            <strong>${dish.name}</strong>
                                        </td>
                                        <td>
                                            <span class="category-badge">${dish.category}</span>
                                        </td>
                                        <td>
                                            <small class="text-muted">${dish.description}</small>
                                        </td>
                                        <td class="price-tag"> &#8377;${dish.price}</td>
                                        <td>
                                            <c:if test="${not empty dish.buyUrl}">
                                                <a href="${dish.buyUrl}" target="_blank" class="btn btn-sm btn-outline-primary">
                                                    <i class="fas fa-external-link-alt"></i> View Link
                                                </a>
                                            </c:if>
                                            <c:if test="${empty dish.buyUrl}">
                                                <span class="text-muted">No URL</span>
                                            </c:if>
                                        </td>
                                        <td>
                                            <span class="availability-badge ${dish.available ? 'available' : 'not-available'}">
                                                ${dish.available ? 'Available' : 'Not Available'}
                                            </span>
                                        </td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="btn btn-sm btn-edit">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>
                                                <button class="btn btn-sm btn-delete">
                                                    <i class="fas fa-trash"></i> Delete
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td colspan="8">
                                        <div class="no-dishes">
                                            <i class="fas fa-utensils"></i>
                                            <h4>No Dishes Found</h4>
                                            <p>There are no dishes in the menu yet. <a href="redirectToAddDishes">Add your first dish</a></p>
                                        </div>
                                    </td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="pagination-container">
                <div class="pagination-info">
                    Showing ${dishesList.size()} dishes
                </div>
                <nav>
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#">Previous</a>
                        </li>
                        <li class="page-item active">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
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
        // Search functionality
        document.getElementById('searchInput').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const rows = document.querySelectorAll('#dishesTableBody tr');

            rows.forEach(row => {
                const text = row.textContent.toLowerCase();
                if (text.includes(searchTerm)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        });

        // Image error handling
        document.addEventListener('DOMContentLoaded', function() {
            const images = document.querySelectorAll('.dish-image');
            images.forEach(img => {
                img.addEventListener('error', function() {
                    this.src = 'https://via.placeholder.com/60x60?text=No+Image';
                });
            });
        });
    </script>
</body>
</html>