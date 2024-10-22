<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css'/>">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #76b852, #8DC26F);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    form {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        width: 350px;
        text-align: center;
    }

    h2 {
        font-size: 24px;
        margin-bottom: 30px;
        color: #4A4A4A;
        text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    }

    form div {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-size: 14px;
        margin-bottom: 8px;
        color: #4A4A4A;
        text-align: left;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        font-size: 16px;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #76b852;
        outline: none;
    }

    input[readonly] {
        background-color: #e9ecef;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #76b852;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 18px;
        font-weight: 500;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    button:hover {
        background-color: #5A9C3A;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
    }

    p {
        font-size: 14px;
        margin-top: 15px;
        color: #4A4A4A;
    }

    a {
        color: #007BFF;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #0056b3;
        text-decoration: underline;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        form {
            width: 90%;
        }

        h2 {
            font-size: 20px;
        }

        button {
            font-size: 16px;
            padding: 10px;
        }
    }
</style>

</head>
<body>

    <form action="/register" method="POST">
        <h2>Register</h2>
        
        <div>
            <label>Username:</label>
            <input type="text" name="username" required/>
        </div>
        
        <div>
            <label>Password:</label>
            <input type="password" name="password" required/>
        </div>
        
        <div>
            <label>Roles:</label>
            <input type="text" name="roles" value="ROLE_USER" readonly/>
        </div>
        
        <div>
            <button type="submit">Register</button>
        </div>

        <p>Already have an account? <a href="/login">Login here</a></p>
    </form>

</body>
</html>
