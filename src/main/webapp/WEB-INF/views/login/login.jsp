<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <meta charset="UTF-8">
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="/js/login.js"></script>
        <title>
        </title>
        <style>
            #submit {
                width: 100px;
                height: 20px;
            }
        </style>
    </head>
<body>
<form id="loginProc" action="loginProc" method="post" onsubmit="return false;">
    <h1>LOGIN Page</h1>
        <input type="text" id="userId" name="userId" value="hansu">
        <input type="text" id="userPw" name="userPw" value="1234">

    <button id="loginBtn">
        <span>로그인 드가자</span>
    </button>


    <div id="popup" style=" z-index: 100; width: 100px; height: 100px; background: #F00">
        <h1>로그인 팝업</h1>
    </div>
</form>
</body>
</html>

