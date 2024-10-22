<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0;
            min-height: 100vh; /* Full height */
            justify-content: center; /* Center content vertically */
        }

        h1 {
            color: #007bff; /* Blue color for the heading */
            margin-bottom: 20px;
            text-align: center;
            font-size: 2rem; /* Increased font size for heading */
            letter-spacing: 1px; /* Space between letters */
        }

        form {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px; /* Fixed width for the form */
            display: flex;
            flex-direction: column;
            gap: 20px; /* Increased space between form elements */
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 1rem; /* Font size for labels */
        }

        input[type="text"],
        input[type="number"] {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 12px;
            font-size: 1rem; /* Consistent font size */
            transition: border-color 0.3s ease;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1); /* Inner shadow */
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #007bff; /* Blue border on focus */
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Blue glow effect */
        }

        button {
            background-color: #28a745; /* Green color */
            color: #ffffff;
            padding: 12px 20px; /* Increased padding */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Add transform effect */
            font-size: 1.1rem; /* Increased font size */
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        button:hover {
            background-color: #218838; /* Darker green on hover */
            transform: translateY(-2px); /* Lift effect on hover */
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: #ffffff;
            background-color: #dc3545; /* Red color */
            padding: 12px 20px; /* Increased padding */
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Add transform effect */
            font-size: 1rem; /* Consistent font size */
            text-align: center; /* Center the text */
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        .back-link:hover {
            background-color: #c82333; /* Darker red on hover */
            transform: translateY(-2px); /* Lift effect on hover */
        }
    </style>
</head>
<body>
    <h1>Edit Product</h1>
    <form action="/products/edit/${product.id}" method="post">
        <label>Name:</label>
        <input type="text" name="name" value="${product.name}" required>
        
        <label>Description:</label>
        <input type="text" name="description" value="${product.description}">

        <label>Quantity:</label>
        <input type="number" name="quantity" value="${product.quantity}" required>
        
        <label>Price:</label>
        <input type="number" step="0.01" name="price" value="${product.price}" required>

        <label>Image URL:</label>
        <input type="text" name="image" value="${product.image}"> <!-- Input for image URL -->
        
        <button type="submit">Update Product</button>
    </form>
    <a href="/products" class="back-link">Back to List</a>
</body>
</html>
