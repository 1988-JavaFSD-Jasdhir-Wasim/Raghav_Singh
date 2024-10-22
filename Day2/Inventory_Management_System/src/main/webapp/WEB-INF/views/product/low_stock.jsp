<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.day2.model.Product" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Low Stock Products</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #e9ecef, #f8f9fa);
            color: #343a40;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px;
            margin: 0;
        }

        h1 {
            color: #007bff;
            margin-bottom: 20px;
            font-size: 2.5em;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px; /* Space between cards */
            justify-content: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .product-card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 280px; /* Card width */
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }

        .product-card h3 {
            color: #28a745; /* Green for product name */
            margin-bottom: 15px;
            font-size: 1.5em;
        }

        .product-card p {
            margin: 10px 0;
            line-height: 1.5;
        }

        .action-buttons {
            margin-top: 20px;
        }

        .action-buttons a {
            text-decoration: none;
            color: #fff;
            background-color: #007bff; /* Blue color */
            padding: 10px 15px;
            border-radius: 5px;
            margin: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .action-buttons a:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Scale effect on hover */
        }

        .back-link {
            margin-top: 30px;
            text-decoration: none;
            color: #ffffff;
            background-color: #dc3545; /* Red color */
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .back-link:hover {
            background-color: #c82333; /* Darker red on hover */
            transform: scale(1.05); /* Scale effect on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .product-card {
                width: 90%; /* Full width on smaller screens */
            }

            h1 {
                font-size: 2em; /* Smaller heading on smaller screens */
            }
        }
    </style>
</head>
<body>
    <h1>Products with Low Stock</h1>
    <div class="product-container">
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (products != null && !products.isEmpty()) {
                for (Product product : products) {
        %>
            <div class="product-card">
                <h3><%= product.getName() %></h3>
                <p><strong>Description:</strong> <%= product.getDescription() %></p>
                <p><strong>Quantity:</strong> <%= product.getQuantity() %></p>
                <p><strong>Price:</strong> $<%= product.getPrice() %></p>
                <p><strong>Category:</strong> <%= product.getCategory() != null ? product.getCategory().getName() : "N/A" %></p>
                <div class="action-buttons">
                    <a href="/products/edit/<%= product.getId() %>">Edit</a>
                    <a href="/products/delete/<%= product.getId() %>">Delete</a>
                </div>
            </div>
        <%
                }
            } else {
        %>
            <div class="product-card">
                <p>No low stock products found</p>
            </div>
        <%
            }
        %>
    </div>
    <a href="/" class="back-link">Home</a>
</body>
</html>
