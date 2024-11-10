<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Encryption Page</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }
        .input-area {
            margin-bottom: 20px;
        }
        textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
            resize: none;
            height: 80px;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
        }
        .buttons button {
            width: 48%;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
        }
        .encode-btn {
            background-color: #4CAF50;
        }
        .decode-btn {
            background-color: #2196F3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Encryption Page</h1>
    <div class="input-area">
        <textarea id="textInput" placeholder="텍스트 입력..."></textarea>
        <textarea id="textInput2" placeholder="디코딩 할 텍스트"></textarea>
    </div>
    <div class="buttons">
        <button class="encode-btn" onclick="encodeText()">Encode</button>
        <button class="decode-btn" onclick="decodeText()">Decode</button>
    </div>
</div>

<script>

    const encodeText = () => {
        const text = $('#textInput').val()

        const data = {
            text : text
        }

        $.ajax({
            url : '/enc/encoding',
            type : 'POST',
            data : data,
            success : function(res) {
                $('#textInput').val('')
                $('#textInput2').val(res)
            },
            error : function(err) {
                console.log('실패')
                console.log(err)
            }
        })
    }

    const decodeText = () => {
        const text = $('#textInput2').val()

        const data = {
            text : text
        }

        $.ajax({
            url : '/enc/decoding',
            type : 'POST',
            data : data,
            success : function(res) {
                $('#textInput').val(res)
            },
            error : function(err) {
                console.log('실패')
                console.log(err)
            }
        })
    }
</script>
</body>
</html>
