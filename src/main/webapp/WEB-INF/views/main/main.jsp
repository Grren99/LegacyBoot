<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <title>Simple Bulletin Board</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .board-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .board-table th, .board-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .board-table th {
            background-color: #f2f2f2;
            color: #333;
        }

        .form-container {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"], .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-group button {
            padding: 10px 15px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #4cae4c;
        }

        .pagination {
            text-align: center;
            margin: 20px 0;
        }

        .pagination a {
            text-decoration: none;
            padding: 8px 16px;
            border: 1px solid #ddd;
            margin: 0 2px;
            color: #333;
            border-radius: 4px;
            background-color: #f9f9f9;
            transition: background-color 0.3s, color 0.3s;
        }

        .pagination a:hover {
            background-color: #e9e9e9;
        }

        .pagination .active {
            background-color: #5cb85c;
            color: white;
            border: 1px solid #5cb85c;
        }

        .pagination .disabled {
            color: #ccc;
            border: 1px solid #ddd;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Bulletin Board</h1>

    <!-- 게시판 테이블 -->
    <table class="board-table">
        <thead>
        <tr>
            <th>No</th>
            <th>Title</th>
            <th>Author</th>
            <th>Date</th>
        </tr>
        </thead>
        <tbody>
        <!-- Sample Rows -->
<%--        <c:forEach var="list" items="${MainList}">--%>
<%--            <tr>--%>
<%--                <td>${list.id}</td>--%>
<%--                <td>${list.title}</td>--%>
<%--                <td>${list.author}</td>--%>
<%--                <td>${list.createdAt}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
        </tbody>
    </table>
    <!-- 페이지 네비게이션 -->
    <div class="pagination">
<%--        <c:if test="${currentPage > 1}">--%>
<%--            <a href="?page=1&size=${pageSize}">First</a>--%>
<%--            <a href="?page=${currentPage - 1}&size=${pageSize}">Previous</a>--%>
<%--        </c:if>--%>

<%--        <!-- 페이지 번호 생성 -->--%>
<%--        <c:forEach var="i" begin="1" end="${totalPages}">--%>
<%--            <c:choose>--%>
<%--                <c:when test="${i == currentPage}">--%>
<%--                    <a href="?page=${i}&size=${pageSize}" class="active">${i}</a>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <a href="?page=${i}&size=${pageSize}">${i}</a>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </c:forEach>--%>

<%--        <c:if test="${currentPage < totalPages}">--%>
<%--            <a href="?page=${currentPage + 1}&size=${pageSize}">Next</a>--%>
<%--            <a href="?page=${totalPages}&size=${pageSize}">Last</a>--%>
<%--        </c:if>--%>
    </div>
    <!-- 게시물 작성 폼 -->
    <div class="form-container">
        <h2>Post a new message</h2>
        <form action="post_message.jsp" method="post">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" id="author" name="author" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>

    </div>
</div>
</body>
</html>
