<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>한수~</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #f47a64 0%, #f65da0 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .layout {
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
            max-width: 500px;
            width: 100%;
            position: relative;
            z-index: 1;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #000;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        .layout::before {
            content: " ";
            display: block;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
            background: url('https://source.unsplash.com/1600x900/?sunset') no-repeat center center/cover;
            filter: blur(8px) brightness(0.7);
        }

        .btn {
            display: inline-block;
            padding: 10px 25px;
            background-color: #FF512F;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #DD2476;
        }
    </style>
</head>
<body>
<div class="layout">
    <h1>한수 입니돠앙 ! 아아</h1>
    <h1>한수 일겁니다 ! ! 아아</h1>
    <a href="/" class="btn">돌아가자</a>
</div>
</body>
</html>
