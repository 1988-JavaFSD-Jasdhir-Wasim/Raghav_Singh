<!-- WEB-INF/views/authors.jsp -->
<%@ page import="java.util.List" %>
<%@ page import="com.day3.Library.model.Author" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authors List</title>
    
    <!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

<!-- CSS Styles -->
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        color: #fff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        min-height: 100vh;
    }

    h2 {
        font-size: 32px;
        margin-bottom: 30px;
        text-align: center;
        color: #fff;
        letter-spacing: 1.2px;
        font-weight: 600;
    }

    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        max-width: 1200px;
        padding: 20px;
    }

    .card {
        background: linear-gradient(145deg, #ffffff, #f3f3f3);
        border-radius: 12px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        width: 280px;
        padding: 25px;
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
        transform: translateY(-12px);
        box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
    }

    .card-title {
        font-size: 20px;
        font-weight: 600;
        color: #333;
        margin-bottom: 15px;
    }

    .card-description {
        font-size: 14px;
        color: #777;
        margin-bottom: 20px;
    }

    .btn {
        background-color: #3498db;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 25px;
        font-size: 16px;
        font-weight: 500;
        cursor: pointer;
        text-decoration: none;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
    }

    .btn:hover {
        background-color: #2980b9;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    .links {
        margin-top: 30px;
        text-align: center;
    }

    .links a {
        text-decoration: none;
        color: #fff;
        font-size: 15px;
        margin: 0 15px;
        padding: 10px 20px;
        background-color: #2ecc71;
        border-radius: 20px;
        transition: background-color 0.3s ease;
    }

    .links a:hover {
        background-color: #27ae60;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .card-container {
            flex-direction: column;
            padding: 0;
        }

        .card {
            width: 100%;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 26px;
        }

        .links a {
            margin: 10px 5px;
            font-size: 14px;
        }
    }
</style>

</head>
<body>

    <h2>List of Authors</h2>

    <div class="card-container">
        <%
            List<Author> authors = (List<Author>) request.getAttribute("authors");
            if (authors != null) {
                for (Author author : authors) {
        %>
            <div class="card">
                <div class="card-title"><%= author.getName() %></div>
                <div class="card-description">Famous Author of several books.</div>
            
            </div>
        <%
                }
            } else {
        %>
            <p>No authors available.</p>
        <%
            }
        %>
    </div>

    <div class="links">
        <a href="/library/authors/add">Add New Author</a>
        <a href="/">Home</a>
    </div>

</body>
</html>
