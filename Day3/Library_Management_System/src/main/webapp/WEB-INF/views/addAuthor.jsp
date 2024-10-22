<!-- WEB-INF/views/addAuthor.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Author</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <!-- CSS Styles -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 400px;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            font-weight: 600;
            margin-bottom: 25px;
            color: #fff;
            text-shadow: 3px 3px 12px rgba(0, 0, 0, 0.4);
            font-size: 1.8rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 10px;
            font-weight: 500;
            color: #fff;
            font-size: 1rem;
        }

        input[type="text"] {
            padding: 14px;
            border-radius: 10px;
            border: none;
            margin-bottom: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="text"]:focus {
            background-color: #e9f0f7;
            outline: none;
            transform: scale(1.02);
        }

        button {
            background-color: #ff6b6b;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        button:hover {
            background-color: #ff5252;
            transform: translateY(-3px);
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #ffd700;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ffecb3;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add a New Author</h2>

        <form action="/library/authors/add" method="post">
            <label for="name">Author Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter author's name" required />

            <button type="submit">Add Author</button>
        </form>

        <a href="/library/authors">View All Authors</a>
    </div>

</body>
</html>
