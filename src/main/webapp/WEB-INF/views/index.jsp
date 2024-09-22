<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 100%;
        }

        h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .repo-link {
            margin-bottom: 30px;
        }

        .repo-link a {
            color: #0366d6;
            font-size: 18px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .repo-link a:hover {
            color: #d63031;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            background-color: #F00;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            text-decoration: none;
            margin: 0 10px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn:hover {
            background-color: #ffffff;
            color: #000;
            border: 1px solid #F00;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #999;
        }

    </style>
</head>
<body>
<div class="container">
    <h1>준기입니다</h1>
    <p>git repo..</p>
    <div class="repo-link">
        <a href="https://github.com/Grren99/LegacyBoot.git">
            <h3>https://github.com/Grren99/LegacyBoot.git</h3>
        </a>
    </div>
    <a href="#" class="btn">남매니저님...</a>
    <a href="/hansu" class="btn">김한수수수수..</a>
    <a href="/chart" class="btn">구글차트..</a>
    <div class="footer">
        &copy; 2024 Your Company. All rights reserved.
    </div>
</div>
</body>
</html>
