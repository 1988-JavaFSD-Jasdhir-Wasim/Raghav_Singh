<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task List</title>
       <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f7fb;
        }
        h2 {
            text-align: center;
            color: #444;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #eaeaea;
        }
        th {
            background-color: #f8f9fa;
            color: #333;
            font-weight: bold;
            text-transform: uppercase;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        tr:nth-child(even) {
            background-color: #fbfbfb;
        }
        .action-links a {
            text-decoration: none;
            color: #007bff;
            padding: 6px 12px;
            border-radius: 4px;
            transition: all 0.3s ease;
        }
        .action-links a:hover {
            background-color: #007bff;
            color: white;
        }
        .create-task {
            display: inline-block;
            margin: 25px auto;
            padding: 12px 30px;
            background-color: #28a745;
            color: white;
            border-radius: 6px;
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .create-task:hover {
            background-color: #218838;
        }
        .no-tasks {
            text-align: center;
            padding: 20px;
            font-size: 16px;
            color: #999;
        }
    </style>
</head>
<body>
    <h2>Task List</h2>
   
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Priority</th>
                <th>Status</th>
                <th>Due Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Importing the required classes
                List<com.example.TaskManagement.model.Task> tasks = (List<com.example.TaskManagement.model.Task>) request.getAttribute("tasks");
                if (tasks != null && !tasks.isEmpty()) {
                    for (com.example.TaskManagement.model.Task task : tasks) {
            %>
                <tr>
                    <td><%= task.getId() %></td>
                    <td><%= task.getTitle() %></td>
                    <td><%= task.getDescription() %></td>
                    <td><%= task.getPriority() %></td>
                    <td><%= task.getStatus() %></td>
                    <td><%= task.getDueDate() %></td>
                    <td class="action-links">
                        <a href="/tasks/edit/<%= task.getId() %>">Edit</a>
                        <a href="/tasks/delete/<%= task.getId() %>" onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            <% 
                    } 
                } else {
            %>
                <tr>
                    <td colspan="7" style="text-align: center;">No tasks available.</td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <a href="/tasks/new" class="create-task">Create New Task</a>
    <a href="/success" class="create-task">User Page</a>
   

</body>
</html>
