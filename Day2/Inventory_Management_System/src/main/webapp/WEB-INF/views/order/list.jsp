<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.day2.model.OrderEntity" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List</title>
       <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f4f8; /* Light background color */
            color: #333; /* Dark text color */
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0; /* Remove default margin */
        }

        h1 {
            color: #007bff; /* Blue color for heading */
            margin-bottom: 20px;
            font-size: 2.5em; /* Larger heading */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .order-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px; /* Increased space between cards */
        }

        .order-card {
            background-color: #ffffff; /* White card background */
            border: 1px solid #dee2e6; /* Light border */
            border-radius: 10px; /* More rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Deeper shadow effect */
            padding: 20px; /* Increased padding */
            width: 300px; /* Fixed card width */
            text-align: center; /* Centered text */
            transition: transform 0.2s, box-shadow 0.2s; /* Smooth transform effect */
        }

        .order-card:hover {
            transform: translateY(-5px); /* Lift card on hover */
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
        }

        img {
            max-width: 100%; /* Responsive image */
            height: auto; /* Auto height */
            border-radius: 10px; /* More rounded image corners */
            margin-bottom: 10px; /* Space below the image */
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: #ffffff; /* White text color */
            background-color: #28a745; /* Green color for back button */
            padding: 10px 20px;
            border-radius: 5px; /* Rounded corners */
            font-weight: bold; /* Bold text */
            transition: background-color 0.3s ease, transform 0.3s ease; /* Transition effects */
            display: inline-block; /* Block display for button */
        }

        .back-link:hover {
            background-color: #218838; /* Darker green on hover */
            transform: scale(1.05); /* Slightly larger on hover */
        }

        @media (max-width: 768px) {
            .order-card {
                width: 90%; /* Full width on small screens */
            }

            h1 {
                font-size: 2em; /* Smaller heading on small screens */
            }
        }
    </style>
</head>
<body>
    <h1>Order List</h1>
    <div class="order-container">
        <%
            List<OrderEntity> orders = (List<OrderEntity>) request.getAttribute("orders");
            if (orders != null && !orders.isEmpty()) {
                for (OrderEntity order : orders) {
        %>
            <div class="order-card">
                <h3>Order ID: <%= order.getId() %></h3>
                <p><strong>Product Name:</strong> <%= order.getProduct().getName() %></p>
                <p><strong>Quantity:</strong> <%= order.getQuantity() %></p>
                <p><strong>Status:</strong> <%= order.getStatus() %></p>
                <p><strong>Order Date:</strong> <%= order.getOrderDate() %></p>
                <img src="<%= order.getProductImage() %>" alt="Product Image"/>
            </div>
        <%
                }
            } else {
        %>
            <p>No orders found.</p>
        <%
            }
        %>
    </div>
    <a href="/products" class="back-link">Back to Products</a>
     <a href="/" class="back-link">Home</a>
</body>
</html>
