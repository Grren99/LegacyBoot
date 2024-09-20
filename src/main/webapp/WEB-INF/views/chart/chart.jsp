<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>chart</title>
    <!-- 구글 차트 라이브러리 (CDN) -->

    <script type="text/javascript" src="/js/loader.js"></script>
    <script type="text/javascript">
        // 차트를 그리는 함수 Google Chart !
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            // 들어갈 데이터 ([[이름, 값]])
            let data = google.visualization.arrayToDataTable([
                ['Time', '인입지수'],
                ['0시',  0],
                ['1시',  0],
                ['2시',  0],
                ['3시',  1],
                ['4시',  2],
                ['5시',  2],
                ['6시',  3],
                ['7시',  5],
                ['8시',  46],
                ['9시',  149],
                ['10시', 176],
                ['11시', 132],
                ['12시', 90],
                ['13시', 133],
                ['14시', 105],
                ['15시', 105],
                ['16시', 105],
                ['17시', 79],
                ['18시', 17],
                ['19시', 11],
                ['20시', 6],
                ['21시', 9],
                ['22시', 4],
                ['23시', 4],
            ]);

            var options = {
                // 범례 위치 설정
                legend: {
                    position: 'right',
                },
                titleTextStyle: { fontSize: 14 },
                hAxis: { textStyle: { fontSize: 14 }, titleTextStyle: { fontSize: 14 } },
                vAxis: { textStyle: { fontSize: 14 }, titleTextStyle: { fontSize: 14 } },
                width : 1000,
                height : 400,
                colors: ['#F13E3E'], // 선 색상 설정
            };
            // 아이디를 얻어와서 차트를 draw 함 !
            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
            chart.draw(data, options);

        }
    </script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-size: 12px; /* 전체적인 폰트 크기를 줄임 */
        }
        #curve_chart {
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            background-color: #fff;
        }
    </style>
</head>

<body>
<div id="curve_chart"></div>
</body>

</html>
