<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2020/1/4
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EchartsDemo</title>
   <script src="${pageContext.request.contextPath}/Echarts/echarts.min.js"></script>
</head>
<body>
        <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
        <div id="main" style="width: 600px;height:400px;">

        </div>

        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));



            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: '消费统计'
                },
                tooltip: {},
                legend: {
                    data:['花费']
                },
                xAxis: {
                    data: ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"]
                },
                yAxis: {},
                series: [{
                    name: '花费',
                    type: 'bar',
                    data: [5, 20, 36, 10, 10, 20]
                }]
            };

            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        </script>
</body>
</html>
