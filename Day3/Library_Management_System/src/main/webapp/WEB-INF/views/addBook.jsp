<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Book</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Styles -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        h2 {
            margin-bottom: 20px;
            font-size: 30px;
            color: #333;
            text-align: center;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"], select {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
            transition: box-shadow 0.3s ease;
        }

        input[type="text"]:focus, select:focus {
            border-color: #3498db;
            box-shadow: 0 4px 12px rgba(50, 150, 250, 0.2);
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #2ecc71;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #27ae60;
            transform: translateY(-3px);
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #3498db;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #2980b9;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            h2 {
                font-size: 24px;
            }

            label {
                font-size: 14px;
            }

            input[type="text"], select, button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add New Book</h2>
        <form action="/library/books/add" method="post">
            <label for="title">Book Title:</label>
            <input type="text" id="title" name="title" required />

            <label for="isbn">ISBN:</label>
            <input type="text" id="isbn" name="isbn" required />

            <label for="author">Author:</label>
            <select id="author" name="authorId" required>
                <option value="">Select Author</option>
                <!-- Dynamic options will be injected here -->
            </select>

            <button type="submit">Add Book</button>
        </form>

        <a href="${pageContext.request.contextPath}/library/books">Back to Book List</a>
    </div>

</body>
</html>
