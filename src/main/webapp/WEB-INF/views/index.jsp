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
    <br/><br/>
    <a href="tel:0806006000" class="tel1">전화 테스트1 a태그</a>
    <br/><br/>
    <div class="tel2" onclick="tel2()">전화 테스트2 window</div>
    <br/>
    <div class="tel3" onclick="tel3()">전화 테스트3 document</div>
    <div class="footer">
        &copy; 2024 Your Company. All rights reserved.
    </div>
    <div onclick="window.close()">
      창 닫기 테스트22
    </div>
</div>

<script type="text/javascript" charset="UTF-8">
  const tel2 = () => {
    window.location.href = 'tel:0806006000'
  }

  const tel3 = () => {
    document.location.href = 'tel:0806006000'
  }











  /* 카카오 인앱 방지 스크립트 */
  var inappdeny_exec_vanillajs = (callback) => {
    if(document.readyState !== 'loading'){
      callback();
    }else{
      document.addEventListener('DOMContentLoaded', callback);
    }
  }
  inappdeny_exec_vanillajs(() => {
    /* Do things after DOM has fully loaded */
    function copytoclipboard(val){
      var t = document.createElement("textarea");
      document.body.appendChild(t);
      t.value = val;
      t.select();
      document.execCommand('copy');
      document.body.removeChild(t);
    };
    function inappbrowserout(){
      copytoclipboard(window.location.href);
      alert('URL주소가 복사되었습니다.\n\nSafari가 열리면 주소창을 길게 터치한 뒤, "붙여놓기 및 이동"를 누르면 정상적으로 이용하실 수 있습니다.');
      location.href='x-web-search://?';
    };

    var useragt = navigator.userAgent.toLowerCase();
    var target_url = location.href;

    if(useragt.match(/kakaotalk/i)){

      //카카오톡 외부브라우저로 호출
      location.href = 'kakaotalk://web/openExternal?url='+encodeURIComponent(target_url);

    }else if(useragt.match(/line/i)){

      //라인 외부브라우저로 호출
      if(target_url.indexOf('?') !== -1){
        location.href = target_url+'&openExternalBrowser=1';
      }else{
        location.href = target_url+'?openExternalBrowser=1';
      }

    }else if(useragt.match(/inapp|naver|snapchat|wirtschaftswoche|thunderbird|instagram|everytimeapp|whatsApp|electron|wadiz|aliapp|zumapp|iphone(.*)whale|android(.*)whale|kakaostory|band|twitter|DaumApps|DaumDevice\/mobile|FB_IAB|FB4A|FBAN|FBIOS|FBSS|trill|SamsungBrowser\/[^1]/i)){

      //그외 다른 인앱들
      if(useragt.match(/iphone|ipad|ipod/i)){

        //아이폰은 강제로 사파리를 실행할 수 없다 ㅠㅠ
        //모바일대응뷰포트강제설정
        var mobile = document.createElement('meta');
        mobile.name = 'viewport';
        mobile.content = "width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui";
        document.getElementsByTagName('head')[0].appendChild(mobile);
        //노토산스폰트강제설정
        var fonts = document.createElement('link');
        fonts.href = 'https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap';
        document.getElementsByTagName('head')[0].appendChild(fonts);
        document.body.innerHTML = "<style>body{margin:0;padding:0;font-family: 'Noto Sans KR', sans-serif;overflow: hidden;height: 100%;}</style><h2 style='padding-top:50px; text-align:center;font-family: 'Noto Sans KR', sans-serif;'>인앱브라우저 호환문제로 인해<br />Safari로 접속해야합니다.</h2><article style='text-align:center; font-size:17px; word-break:keep-all;color:#999;'>아래 버튼을 눌러 Safari를 실행해주세요<br />Safari가 열리면, 주소창을 길게 터치한 뒤,<br />'붙여놓기 및 이동'을 누르면<br />정상적으로 이용할 수 있습니다.<br /><br /><button onclick='inappbrowserout();' style='min-width:180px;margin-top:10px;height:54px;font-weight: 700;background-color:#31408E;color:#fff;border-radius: 4px;font-size:17px;border:0;'>Safari로 열기</button></article><img style='width:70%;margin:50px 15% 0 15%' src='https://tistory3.daumcdn.net/tistory/1893869/skin/images/inappbrowserout.jpeg' />";

      }else{
        //안드로이드는 Chrome이 설치되어있음으로 강제로 스킴실행한다.
        location.href='intent://'+target_url.replace(/https?:\/\//i,'')+'#Intent;scheme=http;package=com.android.chrome;end';
      }
    }
  });
</script>
</body>
</html>
