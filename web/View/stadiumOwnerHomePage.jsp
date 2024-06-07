<%-- 
    Document   : stadiumOwnerHomePage
    Created on : Jun 4, 2024, 3:54:16 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <title>Sport Stadium Booking System</title>
        <style>
            body {
                margin: 0;
                font-family: 'Inter', sans-serif;
                background: white;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }
            .header, .footer {
                width: 100%;
                background: #022B3A;
                color: white;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 20px;
                box-sizing: border-box;
            }
            .header .logo {
                display: flex;
                align-items: center;
            }
            .header .logo img {
                margin-right: 10px;
            }
            .header .search-bar {
                flex-grow: 1;
                margin: 0 20px;
                display: flex;
                align-items: center;
                background: #D9D9D9;
                border-radius: 4px;
                padding: 5px 10px;
            }
            .header .search-bar input {
                border: none;
                background: transparent;
                flex-grow: 1;
                padding: 5px;
            }
            .header .search-bar button {
                background: #1F7A8C;
                border: none;
                color: white;
                padding: 5px 10px;
                border-radius: 4px;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .header .search-bar button:hover {
                background: #145569;
            }
            .header .auth-links {
                display: flex;
                gap: 10px;
            }
            .header .auth-links a {
                background: none;
                border: none;
                color: white;
                padding: 10px 20px;
                border-radius: 4px;
                text-decoration: none;
                cursor: pointer;
            }
            .header .auth-links a:hover {
                background: #145569;
            }
            .banner {
                width: 100%;
                height: 149px;
                background: url('<%=request.getContextPath()%>/img/background/bg1.jpg') no-repeat center center;
                background-size: cover;
                display: flex;
                justify-content: center;
                align-items: center;
                color: black;
                font-size: 32px;
                font-weight: 700;
                border-bottom: 1px solid black;
            }
            .nav {
                width: 100%;
                background: #1F7A8C;
                display: flex;
                justify-content: space-around;
                align-items: center;
                color: white;
                padding: 10px 0;
            }
            .nav a {
                background: transparent;
                border: none;
                color: white;
                font-size: 18px;
                text-decoration: none;
                cursor: pointer;
                padding: 10px 20px;
            }
            .nav a:hover {
                background: #145569;
                border-radius: 4px;
            }
            #stadium {
                width: 100%;
                height: 600px; /* Điều chỉnh kích thước của ảnh */
                background-size: cover;
                background-position: center;
                transition: background-image 0.5s ease-in-out; /* Hiệu ứng chuyển đổi hình ảnh */
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/img/logo/logo.png" alt="Logo" width="40px" height="40px">
                <span>Badminton Stadium Booking</span>
            </div>
            <!--
            <form class="search-bar" action="searchResults.jsp" method="get">
                <input type="text" name="query" placeholder="Search">
                <button type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </form> -->
            <div class="auth-links">
                <a href="#">Login</a>
                <a href="#">Register</a>
            </div>
        </div>
                
        <div class="nav">
            <a href="#">BOOKING MANAGEMENT</a>
            <a href="#">STADIUM MANAGEMENT</a>
            <a href="#">#</a>
        </div>
                
        <div style="height: 20px;"></div> <!-- Khoảng trống -->
        <div id="stadium"></div>

    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var imageUrls = ['file:///C:/Users/Hong%20Dang/Pictures/NARAKA%20FACE/1.jpg', 'file:///C:/Users/Hong%20Dang/Pictures/NARAKA%20FACE/2.jpg', 'file:///C:/Users/Hong%20Dang/Pictures/NARAKA%20FACE/3.jpg'];
            var stadium = document.getElementById('stadium');
            var index = 0;

            function changeImage() {
                stadium.style.backgroundImage = "url('" + imageUrls[index] + "')";
                index = (index + 1) % imageUrls.length;
            }

            changeImage(); // Hiển thị ảnh đầu tiên
            setInterval(changeImage, 5000); // Chuyển đổi ảnh sau mỗi 5 giây
        });
    </script>
</body>
</html>


