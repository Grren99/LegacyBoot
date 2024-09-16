<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>chart</title>
    <!-- 구글 차트 라이브러리 (CDN) -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // 차트를 그리는 함수 Google Chart !
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            // 들어갈 데이터 ([[이름, 값]])
            let data = google.visualization.arrayToDataTable([
                ['Time', '인입지수', '상담사 연결 수'],
                ['0시',  0, 0],
                ['1시',  0, 0],
                ['2시',  0, 0],
                ['3시',  1, 0],
                ['4시',  2, 0],
                ['5시',  2, 0],
                ['6시',  3, 0],
                ['7시',  5, 7],
                ['8시',  46, 11],
                ['9시',  149, 23],
                ['10시', 176, 17],
                ['11시', 132, 17],
                ['12시', 90, 20],
                ['13시', 133, 12],
                ['14시', 105, 11],
                ['15시', 105, 7],
                ['16시', 105, 5],
                ['17시', 79, 0],
                ['18시', 17, 0],
                ['19시', 11, 0],
                ['20시', 6, 0],
                ['21시', 9, 0],
                ['22시', 4, 0],
                ['23시', 4, 0],
            ]);

            var options = {
                // 범례 위치 설정
                legend: { alignment: 'end' },
                titleTextStyle: { fontSize: 14 },
                hAxis: { textStyle: { fontSize: 14 }, titleTextStyle: { fontSize: 14 } },
                vAxis: { textStyle: { fontSize: 14 }, titleTextStyle: { fontSize: 14 } },
                width: 1000,
                height: 400,
                colors: ['#3478FE', '#F13E3E'], // 선 색상 설정
                series: {
                    0: { targetAxisIndex: 0 }, // 첫 번째 데이터 시리즈(입지수) 왼쪽 Y축 사용
                    1: { targetAxisIndex: 1 }, // 두 번째 데이터 시리즈(상담사 연결 수) 오른쪽 Y축 사용
                },
                vAxes: {
                    1: { textPosition: 'none' } // 오른쪽 Y축 값 숨기기
                }

            };


            // 아이디를 얻어와서 차트를 draw 함
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
