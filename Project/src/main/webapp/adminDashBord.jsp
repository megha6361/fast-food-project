
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - SpiceDelight</title>
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

        .welcome-section {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            text-align: center;
            margin-bottom: 30px;
        }

        .welcome-title {
            color: var(--dark-color);
            font-weight: 700;
            margin-bottom: 15px;
        }

        .welcome-subtitle {
            color: #666;
            font-size: 1.1rem;
            margin-bottom: 25px;
        }

        .admin-name {
            color: var(--primary-color);
            font-weight: 600;
        }

        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .dashboard-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .dashboard-card:hover {
            transform: translateY(-5px);
        }

        .card-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .card-title {
            font-weight: 600;
            color: var(--dark-color);
            margin-bottom: 10px;
        }

        .card-value {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--secondary-color);
            margin-bottom: 10px;
        }

        .card-text {
            color: #666;
            font-size: 0.9rem;
        }

        .quick-stats {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .section-title {
            color: var(--dark-color);
            font-weight: 600;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid var(--light-color);
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .stat-item {
            text-align: center;
            padding: 15px;
        }

        .stat-number {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 5px;
        }

        .stat-label {
            color: #666;
            font-size: 0.9rem;
        }

        .recent-activity {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }

        .activity-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .activity-item {
            display: flex;
            align-items: center;
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }

        .activity-item:last-child {
            border-bottom: none;
        }

        .activity-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--light-color);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            color: var(--primary-color);
        }

        .activity-content {
            flex: 1;
        }

        .activity-text {
            margin-bottom: 5px;
            color: var(--dark-color);
        }

        .activity-time {
            font-size: 0.8rem;
            color: #888;
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
            <li><a href="#" class="active"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>
            <li><a href="redirectToUser"><i class="fas fa-users"></i> <span>View Users</span></a></li>
            <li><a href="redirectToAddDishes"><i class="fas fa-utensils"></i> <span>Add Dishes</span></a></li>
            <li><a href="redirectToViewDishes"><i class="fas fa-shopping-cart"></i> <span>View Dishes</span></a></li>

        </ul>
    </div>

    <!-- Top Navigation Bar -->
    <div class="top-navbar">
        <div class="brand-logo">Admin Dashboard</div>
        <div class="admin-profile">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq2PsDF_YynZXwNjjGkKXBeYc_2Aq1izcumg&s"
                 alt="Admin Profile" class="profile-img">
            <span>Hello, <strong>${adminName}</strong></span>
            <a href="logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Welcome Section -->
        <div class="welcome-section">
            <h1 class="welcome-title">Welcome to SpiceDelight Admin Dashboard</h1>
            <p class="welcome-subtitle">You're logged in as Administrator, <span class="admin-name">${adminName}</span>!</p>
            <p>Manage your restaurant operations, monitor performance, and oversee all activities from this centralized dashboard.</p>
        </div>

        <!-- Dashboard Cards -->
        <div class="dashboard-cards">
            <div class="dashboard-card">
                <div class="card-icon">
                    <i class="fas fa-users"></i>
                </div>
                <h3 class="card-title">Total Users</h3>
                <div class="card-value">1,247</div>
                <p class="card-text">Registered customers</p>
            </div>

            <div class="dashboard-card">
                <div class="card-icon">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <h3 class="card-title">Today's Orders</h3>
                <div class="card-value">42</div>
                <p class="card-text">Orders placed today</p>
            </div>

            <div class="dashboard-card">
                <div class="card-icon">
                    <i class="fas fa-rupee-sign"></i>
                </div>
                <h3 class="card-title">Revenue</h3>
                <div class="card-value">&#8377; 28,560</div>
                <p class="card-text">Today's total revenue</p>
            </div>

            <div class="dashboard-card">
                <div class="card-icon">
                    <i class="fas fa-utensils"></i>
                </div>
                <h3 class="card-title">Menu Items</h3>
                <div class="card-value">36</div>
                <p class="card-text">Active menu items</p>
            </div>
        </div>

        <!-- Quick Stats -->
        <div class="quick-stats">
            <h3 class="section-title">Quick Statistics</h3>
            <div class="stats-grid">
                <div class="stat-item">
                    <div class="stat-number">87%</div>
                    <div class="stat-label">Order Completion Rate</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">4.7</div>
                    <div class="stat-label">Average Rating</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">15</div>
                    <div class="stat-label">Pending Orders</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">92%</div>
                    <div class="stat-label">Customer Satisfaction</div>
                </div>
            </div>
        </div>

        <!-- Recent Activity -->
        <div class="recent-activity">
            <h3 class="section-title">Recent Admin Activities</h3>
            <ul class="activity-list">
                <li class="activity-item">
                    <div class="activity-icon">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <div class="activity-content">
                        <div class="activity-text">New user registered: Rajesh Kumar</div>
                        <div class="activity-time">30 minutes ago</div>
                    </div>
                </li>
                <li class="activity-item">
                    <div class="activity-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="activity-content">
                        <div class="activity-text">Large order placed: #ORD-9876 (₹2,450)</div>
                        <div class="activity-time">1 hour ago</div>
                    </div>
                </li>
                <li class="activity-item">
                    <div class="activity-icon">
                        <i class="fas fa-utensils"></i>
                    </div>
                    <div class="activity-content">
                        <div class="activity-text">Menu item updated: Chicken Biryani price</div>
                        <div class="activity-time">2 hours ago</div>
                    </div>
                </li>
                <li class="activity-item">
                    <div class="activity-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="activity-content">
                        <div class="activity-text">New 5-star review received</div>
                        <div class="activity-time">3 hours ago</div>
                    </div>
                </li>
            </ul>
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
</body>
</html>