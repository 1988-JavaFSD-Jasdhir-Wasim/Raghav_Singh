<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.day2.model.Category" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category List</title>
     <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8; /* Soft light background */
            color: #444; /* Darker text color */
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0;
        }

        h1 {
            color: #2C3E50; /* Darker blue for heading */
            margin-bottom: 20px;
            font-size: 2.5em; /* Larger heading */
            text-align: center;
        }

        .button {
            background-color: #2980B9; /* Blue button color */
            color: white; /* White text color */
            padding: 10px 20px;
            text-decoration: none; /* Remove underline */
            border-radius: 25px; /* Rounded corners */
            transition: background-color 0.3s, transform 0.3s; /* Transition effects */
            margin: 10px; /* Space between buttons */
            font-weight: bold; /* Bold text */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Shadow effect */
            display: inline-block; /* Allow margin and padding */
        }

        .button:hover {
            background-color: #1A5276; /* Darker shade on hover */
            transform: translateY(-2px); /* Slight lift effect on hover */
        }

        table {
            width: 80%; /* Table width */
            border-collapse: collapse; /* Merge borders */
            margin-top: 20px; /* Space above the table */
            background-color: white; /* White background for the table */
            border-radius: 10px; /* Rounded corners for the table */
            overflow: hidden; /* Prevents border-radius from being applied to cells */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        th, td {
            padding: 15px; /* Space inside table cells */
            text-align: left; /* Left-aligned text */
            border-bottom: 1px solid #e0e0e0; /* Light bottom border */
        }

        th {
            background-color: #2980B9; /* Blue header background */
            color: white; /* White text color for headers */
        }

        tr:hover {
            background-color: #ecf0f1; /* Light grey on row hover */
        }

        .action-link {
            margin-right: 15px; /* Space between action links */
            text-decoration: none; /* Remove underline */
            color: #2980B9; /* Blue color for links */
            font-weight: bold; /* Bold text */
        }

        .action-link:hover {
            color: #1A5276; /* Darker shade on hover */
        }

        @media (max-width: 600px) {
            table {
                width: 100%; /* Full width on small screens */
            }

            h1 {
                font-size: 2em; /* Smaller heading on small screens */
            }

            .button {
                width: 100%; /* Full width buttons on small screens */
                margin: 5px 0; /* Margin adjustment */
            }
        }
    </style>
</head>
<body>
    <h1>Category List</h1>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>

        <%
        List<Category> categories = (List<Category>) request.getAttribute("categories");
        if (categories != null) {
            for (Category category : categories) {
        %>
        <tr>
            <td><%= category.getId() %></td>
            <td><%= category.getName() %></td>
            <td>
                <a href="/categories/edit/<%= category.getId() %>" class="action-link">Edit</a>
                <a href="/categories/delete/<%= category.getId() %>" 
                   class="action-link" 
                   onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="3">No categories found</td>
        </tr>
        <%
        }
        %>
    </table>
    
    <div>
    <br><br>
        <a href="/categories/add" class="button">Add Category</a>
        <a href="/" class="button">Home</a>
    </div>
</body>
</html>
