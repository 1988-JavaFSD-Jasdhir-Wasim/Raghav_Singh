<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <!-- CSS Styles -->
        <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #f5f7fa;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            color: #2c3e50;
        }

        .container {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .section {
            width: 100%;
            padding: 60px 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background: linear-gradient(135deg, #2980b9 30%, #6dd5fa 90%);
        }

        h1, h2 {
            color: #ffffff;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 32px;
            margin-bottom: 50px;
        }

        p {
            font-size: 18px;
            color: #fff;
            margin-bottom: 20px;
            text-align: center;
        }

        a {
            display: inline-block;
            margin: 15px;
            padding: 16px 40px;
            background-color: #ff4b2b;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-radius: 30px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        a:hover {
            background-color: #ff3a1a;
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #2c3e50;
            color: #fff;
            padding: 20px;
            text-align: center;
            width: 100%;
            position: relative;
        }

        footer p {
            margin: 0;
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 36px;
            }

            h2 {
                font-size: 26px;
            }

            a {
                font-size: 16px;
                padding: 12px 30px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Section 1: Title and Subtitle -->
        <div class="section">
            <h2>Library Management System</h2>
        </div>

        <!-- Section 2: Links -->
        <div class="section">
         <p>  <a href="${pageContext.request.contextPath}/library/books">Book List</a>
            <a href="${pageContext.request.contextPath}/library/authors">Authors</a> </p>
        </div>
    </div>

</body>
</html>
