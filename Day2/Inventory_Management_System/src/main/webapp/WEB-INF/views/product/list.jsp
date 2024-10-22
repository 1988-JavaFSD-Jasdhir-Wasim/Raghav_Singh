<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.day2.model.Product" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9ecef;
            color: #495057;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0;
        }

        h1 {
            color: #007bff;
            margin-bottom: 30px;
            font-size: 2.5em;
            text-align: center;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 30px; /* Space between cards */
            justify-content: center;
            max-width: 1200px;
            padding: 20px;
        }

        .product-card {
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px; /* Card width */
            text-align: center;
            transition: transform 0.2s, box-shadow 0.2s;
            position: relative; /* For positioning the button */
        }

        .product-card:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }

        .product-card h3 {
            color: #28a745; /* Green for product name */
            margin: 15px 0;
            font-size: 1.5em;
        }

        .product-card img {
            width: 100%; /* Responsive image */
            height: auto; /* Maintain aspect ratio */
            border-radius: 8px;
            margin-bottom: 15px;
            max-height: 200px; /* Limit height */
        }

        .action-buttons {
            margin: 10px 0;
        }

        .action-buttons a {
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff; /* Blue color */
            padding: 8px 12px;
            border-radius: 5px;
            margin: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .action-buttons a:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Slightly enlarge */
        }

        .order-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 10px;
        }

        .order-form input {
            width: 90%; /* Slightly smaller */
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            font-size: 14px;
        }

        .order-form button {
            color: #ffffff;
            background-color: #28a745; /* Green for order button */
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-size: 16px;
        }

        .order-form button:hover {
            background-color: #218838; /* Darker green on hover */
            transform: scale(1.05); /* Slightly enlarge */
        }

        .back-link {
            margin-top: 30px;
            text-decoration: none;
            color: #ffffff;
            background-color: #dc3545; /* Red color */
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #c82333; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <h1>Product List</h1>
    
    <div class="product-container">
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (products != null && !products.isEmpty()) {
                for (Product product : products) {
        %>
            <div class="product-card">
                <h3><%= product.getName() %></h3>
                <img src="<%= product.getImage() %>" alt="<%= product.getName() %>"/>
                <p><strong>Description:</strong> <%= product.getDescription() %></p>
                <p><strong>Quantity:</strong> <%= product.getQuantity() %></p>
                <p><strong>Price:</strong> $<%= product.getPrice() %></p>
                <p><strong>Category:</strong> <%= product.getCategory() != null ? product.getCategory().getName() : "N/A" %></p>
                <div class="action-buttons">
                    <a href="/products/edit/<%= product.getId() %>">Edit</a>
                    <a href="/products/delete/<%= product.getId() %>">Delete</a>
                </div>
                <form action="/products/<%= product.getId() %>/order" method="post" class="order-form">
                  <br><br>  <input type="number" name="quantity" min="1" max="<%= product.getQuantity() %>" placeholder="Enter Quantity to order" required>
                    <button type="submit">Order</button>
                </form>
            </div>
        <%
                }
            } else {
        %>
            <div class="product-card">
                <p>No products found</p>
            </div>
        <%
            }
        %>
    </div>
    <p><br> <br>
    <a href="/products/add" class="back-link">Add Product</a>
    <a href="/orders" class="back-link">View Orders</a>
    <a href="/" class="back-link">Home</a></p>
</body>
</html>
