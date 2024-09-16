<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- 보기 편하게 CSS 추가 -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .title {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #343a40;
        }
        .component {
            width: 1000px; /* 부모 요소의 너비에 따라서 Editor Width 변경 */
            height: 300px; /* 부모 요소의 높이에 따라서 Editor Height 변경 */
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-direction: column;
        }
        #editor {}
    </style>

    <!-- TOAST UI Editor CDN URL(CSS)-->
    <link
        rel="stylesheet"
        href="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.css"
    />
    <link
        rel="stylesheet"
        href="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.css"
    />
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
    <!-- Color Picker -->
    <script src="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.js"></script>
    <!-- Editor -->
    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <!-- Editor's Plugin -->
    <script src="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.js"></script>

</head>
<body>
<h1 class="title"> TOAST UI Editor 만들기 </h1>

<!-- TOAST UI Editor가 들어갈 div태그 -->
<div class="component">
    <div id="editor"></div>
</div>

<script>
    // toastUI를 가져 오자 ~
    const { Editor } = toastui;
    // Color를 변경하기 위해 플러그인 가져오기
    const { colorSyntax } = toastui.Editor.plugin;
    // Editor를 생성하자
    const editor = new Editor({
        el: document.querySelector('#editor'), // 에디터를 표시할 div
        initialEditType: 'wysiwyg', // 에디터의 모드를 'wysiwyg' 강제
        hideModeSwitch: true, // 모드 변경 버튼을 숨김
        width: '100%', // 부모 요소의 너비에 맞추기
        height: '100%', // 부모 요소의 높이에 맞추기
        plugins: [colorSyntax] // Color Syntax 플러그인 적용
    });

    // 에디터 내용이 변경될 때마다 실행되는 함수
    function updateContent() {
        const htmlContent = editor.getHTML();  // HTML 콘텐츠를 가져옴
        console.log(htmlContent);
    }

    // 에디터의 내용이 변경될 때 이벤트 리스너 추가
    editor.on('change', updateContent);

    // 초기 실행 (빈 에디터 내용도 확인 가능)
    updateContent();
</script>
</body>
</html>
