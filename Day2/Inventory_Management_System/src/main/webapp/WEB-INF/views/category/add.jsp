<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
        <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%); /* Soft gradient background */
            color: #333;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        h1 {
            color: #007bff;
            font-size: 2.5em;
            margin-bottom: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1); /* Slight shadow for the heading */
        }

        form {
            background-color: #ffffff; /* White background for the form */
            border-radius: 15px; /* Softer rounded corners */
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); /* Elevated shadow */
            padding: 40px;
            width: 350px; /* Slightly wider form */
            display: flex;
            flex-direction: column;
            gap: 20px; /* More space between form elements */
        }

        label {
            font-weight: bold;
            font-size: 1.1em; /* Larger labels */
            color: #333;
        }

        input[type="text"] {
            padding: 12px;
            border: 1px solid #ced4da;
            border-radius: 8px;
            font-size: 1.1em;
            transition: all 0.3s ease;
            background-color: #f8f9fa; /* Slight background color for inputs */
        }

        input[type="text"]:focus {
            border-color: #007bff;
            background-color: #ffffff; /* White background on focus */
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.2); /* Light focus shadow */
        }

        button {
            background: linear-gradient(135deg, #007bff, #0056b3); /* Gradient button */
            color: #ffffff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 1.1em;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background: linear-gradient(135deg, #0056b3, #003f7f); /* Darker gradient on hover */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: #ffffff;
            background-color: #dc3545;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 1.1em;
            text-align: center;
            transition: all 0.3s ease;
            display: inline-block; /* Ensure the link behaves like a button */
        }

        .back-link:hover {
            background-color: #c82333;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Shadow on hover for back button */
        }

        /* Additional Styling for Mobile Responsiveness */
        @media (max-width: 500px) {
            form {
                width: 100%; /* Ensure form takes full width on smaller screens */
                padding: 30px;
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
    <h1>Add Category</h1>
    <form action="/categories" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Add Category</button>
    </form>
    <a href="/categories" class="back-link">Back to List</a>
</body>
</html>
