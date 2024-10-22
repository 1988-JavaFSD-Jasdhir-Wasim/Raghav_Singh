<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management System</title>
    <style>
        /* General Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        /* Container Styling */
        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 900px; /* Larger width for the cards */
            text-align: center;
        }

        /* Heading Styling */
        h1 {
            font-size: 2.8em;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        /* Card Container Styling */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); /* Responsive grid */
            gap: 20px; /* Spacing between cards */
        }

        /* Card Styling */
        .card {
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
            color: #2c3e50;
        }

        .card h3 {
            margin-bottom: 20px;
            font-size: 1.5em;
            color: #007bff;
        }

        .card p {
            font-size: 1.1em;
            color: #6c757d;
            margin-bottom: 20px;
        }

        /* Card Hover Effect */
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .card a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #3498db; /* Blue background */
            padding: 10px 20px;
            border-radius: 50px;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .card a:hover {
            background-color: #2980b9;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            h1 {
                font-size: 2.2em;
            }

            .card h3 {
                font-size: 1.3em;
            }

            .card p {
                font-size: 1em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Inventory Management System</h1>
        <div class="card-container">
            <!-- Card 1 -->
            <div class="card">
                <h3>View Products</h3>
                <p>Explore and manage all products available in your inventory.</p>
                <a href="/products">Go to Products</a>
            </div>

            <!-- Card 2 -->
            <div class="card">
                <h3>Low Stock Products</h3>
                <p>Check which products are running low and need restocking.</p>
                <a href="/products/low-stock">Go to Low Stock</a>
            </div>

            <!-- Card 3 -->
            <div class="card">
                <h3>Categories</h3>
                <p>Organize your products by categories to manage them efficiently.</p>
                <a href="/categories">Go to Categories</a>
            </div>

            <!-- Card 4 -->
            <div class="card">
                <h3>View Orders</h3>
                <p>Review and manage customer orders seamlessly.</p>
                <a href="/orders">Go to Orders</a>
            </div>
        </div>
    </div>
</body>
</html>
