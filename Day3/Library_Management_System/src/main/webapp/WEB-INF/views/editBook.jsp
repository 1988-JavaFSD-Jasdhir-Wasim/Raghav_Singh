<%@ page import="com.day3.Library.model.Author" %>
<%@ page import="com.day3.Library.model.Book" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Styles -->
     <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            border-top: 5px solid #3498db;
            transition: box-shadow 0.3s ease-in-out;
        }

        .form-container:hover {
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
        }

        h2 {
            margin-bottom: 20px;
            font-size: 30px;
            color: #333;
            text-align: center;
            font-weight: bold;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
        }

        input[type="text"], select {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 16px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus, select:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #3498db;
            color: #fff;
            font-size: 18px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #3498db;
            font-size: 16px;
            font-weight: 600;
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
        <h2>Edit Book</h2>
        <form action="${pageContext.request.contextPath}/library/books/edit/${book.id}" method="post">
            <label for="title">Book Title:</label>
            <input type="text" id="title" name="title" value="${book.title}" required />

            <label for="isbn">ISBN:</label>
            <input type="text" id="isbn" name="isbn" value="${book.isbn}" required />

            <label for="author">Author:</label>
            <select id="author" name="authorId" required>
                <%
                    List<Author> authors = (List<Author>) request.getAttribute("authors");
                    Book book = (Book) request.getAttribute("book");
                    if (authors != null) {
                        for (Author author : authors) {
                %>
                            <option value="<%= author.getId() %>" <%= (book.getAuthor() != null && book.getAuthor().getId().equals(author.getId())) ? "selected" : "" %>>
                                <%= author.getName() %>
                            </option>
                <%
                        }
                    }
                %>
            </select>

            <button type="submit">Update Book</button>
        </form>

        <a href="${pageContext.request.contextPath}/library/books">Back to Book List</a>
    </div>

</body>
</html>
