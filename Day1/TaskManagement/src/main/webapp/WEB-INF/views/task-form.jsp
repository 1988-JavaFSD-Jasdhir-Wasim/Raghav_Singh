<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create/Edit Task</title>
        <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f0f4f8, #d0e3fc);
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: 600;
            letter-spacing: 1px;
        }
        form {
            background-color: #ffffff;
            padding: 30px;
            margin: 0 auto;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="date"], select {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #f9fafb;
            transition: border 0.3s ease;
        }
        input[type="text"]:focus, input[type="date"]:focus, select:focus {
            border-color: #007BFF;
            outline: none;
        }
        button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        /* Responsive design for mobile devices */
        @media (max-width: 768px) {
            body {
                padding: 10px;
            }
            form {
                padding: 20px;
            }
            h2 {
                font-size: 20px;
            }
            button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <h2>${task.id == null ? 'Create Task' : 'Edit Task'}</h2>

    <form action="/tasks/save" method="POST">
        <input type="hidden" name="id" value="${task.id}" />

        <label for="title">Title:</label>
        <input type="text" name="title" value="${task.title}" required />

        <label for="description">Description:</label>
        <input type="text" name="description" value="${task.description}" required />

        <label for="priority">Priority:</label>
        <select name="priority" required>
            <option value="LOW" ${task.priority == 'LOW' ? 'selected' : ''}>Low</option>
            <option value="MEDIUM" ${task.priority == 'MEDIUM' ? 'selected' : ''}>Medium</option>
            <option value="HIGH" ${task.priority == 'HIGH' ? 'selected' : ''}>High</option>
        </select>

        <label for="dueDate">Due Date:</label>
        <input type="date" name="dueDate" value="${task.dueDate}" required />

        <label for="status">Status:</label>
        <select name="status" required>
            <option value="OPEN" ${task.status == 'OPEN' ? 'selected' : ''}>Open</option>
            <option value="CLOSED" ${task.status == 'CLOSED' ? 'selected' : ''}>Closed</option>
        </select>

        <button type="submit">Save Task</button>
    </form>

    <div style="text-align: center;">
        <a href="/tasks">Back to Task List</a>
    </div>

</body>
</html>
