<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <!-- Corrected Font Awesome CSS link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #f0f4f8, #b3d4fc);
        margin: 0;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 350px;
        margin-bottom: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .container.welcome {
        background: linear-gradient(to right, #d1e7dd, #a0cfaf);
    }

    h2 {
        color: #333;
        margin-bottom: 25px;
        font-size: 22px;
        letter-spacing: 0.5px;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
    }

    h2 i {
        color: #4CAF50;
        margin-right: 10px;
        font-size: 1.2em;
    }

    a {
        display: inline-block;
        padding: 12px 24px;
        background-color: #007BFF;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 16px;
        margin: 10px 0;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    a i {
        margin-right: 8px;
    }

    a:hover {
        background-color: #28a745;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
    }

    .container:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    }

    @media (max-width: 768px) {
        .container {
            width: 90%;
        }

        h2 {
            font-size: 20px;
        }

        a {
            font-size: 14px;
        }
    }
</style>

</head>
<body>

    <!-- Welcome Section -->
    <div class="container welcome">
        <h2> <i class="fas fa-user"></i> Welcome, ${username}! </h2>
    </div>

    <!-- Links Section -->
    <div class="container">
        <a href="/tasks"><i class="fas fa-tasks"></i>View Tasks</a><br>
        <a href="/logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
    </div>

</body>
</html>
