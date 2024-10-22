<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.day2.model.Category" %>
<%@ page import="com.example.day2.service.CategoryService" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Category</title>
        <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #d9e4f5 0%, #f4c4f3 100%); /* Soft gradient background */
            color: #333;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        h1 {
            color: #007bff; /* Blue color for heading */
            font-size: 2.5em;
            margin-bottom: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1); /* Slight shadow for the heading */
        }

        form {
            background-color: #ffffff; /* White form background */
            border-radius: 15px; /* Softer rounded corners */
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); /* Elevated shadow */
            padding: 40px;
            width: 350px; /* Fixed width for form */
            display: flex;
            flex-direction: column; /* Column layout for form elements */
            gap: 20px; /* More space between form elements */
        }

        label {
            font-weight: bold; /* Bold labels */
            font-size: 1.1em; /* Larger labels */
            color: #333;
        }

        input[type="text"] {
            padding: 12px;
            border: 1px solid #ced4da; /* Light border */
            border-radius: 8px; /* Rounded input corners */
            font-size: 1.1em; /* Larger font size for input */
            transition: all 0.3s ease; /* Transition for border color */
            background-color: #f8f9fa; /* Light background for input */
        }

        input[type="text"]:focus {
            border-color: #007bff; /* Change border color on focus */
            background-color: #ffffff; /* White background on focus */
            outline: none; /* Remove outline */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.2); /* Light focus shadow */
        }

        button {
            background: linear-gradient(135deg, #007bff, #0056b3); /* Gradient button */
            color: #ffffff; /* White text color */
            padding: 12px;
            border: none; /* Remove border */
            border-radius: 8px; /* Rounded button corners */
            font-size: 1.1em; /* Larger button font size */
            cursor: pointer; /* Pointer cursor on hover */
            transition: all 0.3s ease; /* Transition for background color */
        }

        button:hover {
            background: linear-gradient(135deg, #0056b3, #003f7f); /* Darker gradient on hover */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: #ffffff; /* White text color */
            background-color: #dc3545; /* Red color for back button */
            padding: 12px 20px; /* Increased padding for better touch targets */
            border-radius: 8px; /* Rounded corners */
            font-size: 1.1em; /* Larger font size */
            text-align: center; /* Center the text */
            transition: all 0.3s ease; /* Transition effect */
            display: inline-block; /* Ensure the link behaves like a button */
        }

        .back-link:hover {
            background-color: #c82333; /* Darker red on hover */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Shadow on hover for back button */
        }

        /* Additional Styling for Mobile Responsiveness */
        @media (max-width: 500px) {
            form {
                width: 100%; /* Ensure form takes full width on smaller screens */
                padding: 30px; /* Reduced padding for mobile */
            }

            h1 {
                font-size: 2em; /* Reduce heading size for mobile */
            }

            button {
                font-size: 1em; /* Adjust button size on smaller screens */
            }

            .back-link {
                font-size: 1em; /* Adjust back link size for mobile */
            }
        }
    </style>
</head>
<body>
    <h1>Edit Category</h1>

    <%
        // Retrieve the category object from the request attribute
        Category category = (Category) request.getAttribute("category");
    %>

    <form action="/categories/<%= category.getId() %>" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= category.getName() %>" required>
        <button type="submit">Update Category</button>
    </form>

    <a href="/categories" class="back-link">Back to List</a>
</body>
</html>
