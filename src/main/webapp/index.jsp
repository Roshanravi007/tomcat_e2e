<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Training Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f7fa;
            margin: 0;
            padding: 0;
        }
        header {
            background: #2d87f0;
            color: white;
            padding: 15px;
            text-align: center;
        }
        nav {
            background: #1b3c73;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        nav a:hover {
            color: #ffcc00;
        }
        .container {
            padding: 30px;
            text-align: center;
        }
        .card {
            background: white;
            display: inline-block;
            margin: 15px;
            padding: 20px;
            width: 250px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .card h3 {
            margin-top: 0;
            color: #2d87f0;
        }
        footer {
            margin-top: 20px;
            background: #1b3c73;
            color: white;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
<header>
    <h1>Welcome to DevOps Training Portal</h1>
    <p>Learn Jenkins, Docker, Kubernetes, Ansible with Srikanth Anumula!</p>
</header>

<nav>
    <a href="courses.jsp">Courses</a>
    <a href="about.jsp">About</a>
    <a href="contact.jsp">Contact</a>
</nav>

<div class="container">
    <div class="card">
        <h3>Jenkins</h3>
        <p>Learn CI/CD pipelines with real-world examples With Srikanth.</p>
    </div>
    <div class="card">
        <h3>Docker</h3>
        <p>Master containerization and Docker networking.</p>
    </div>
    <div class="card">
        <h3>Kubernetes</h3>
        <p>Orchestrate containers with K8s hands-on labs.</p>
    </div>
</div>

<footer>
    <p>@Srikanth Anumula; 2025 DevOps Training Portal | Powered by Jenkins & Tomcat</p>
</footer>
</body>
</html>
