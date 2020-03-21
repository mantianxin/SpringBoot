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
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var namey = [];    //类别数组（实际用来盛放X轴坐标值）
    var numo = [];    //销量数组（实际用来盛放Y坐标值）

    $.ajax({
        type: 'get',
        url: '${pageContext.request.contextPath}/hutuzhang/hutubegin/Record/show/showmonthtotal',//请求数据的地址
        dataType: "json",        //返回数据形式为json
        success: function (json) {
            console.log("请求返回的数据为：",json);
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var json1 = json;
            $.each(json1, function (index, item) {
                namey.push(item.month);    //挨个取出类别并填入类别数组
                numo.push(item.spendMonth);    //挨个取出销量并填入销量数组
            });

            myChart.hideLoading();    //隐藏加载动画
            myChart.setOption({        //加载数据图表
                xAxis: {
                    data: namey
                },
                series: [{
                    // 根据名字对应到相应的系列
                    data: numo
                }]
            });
        },
        error: function (errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    });

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
            data: []
        },
        yAxis: {},
        series: [{
            name: '花费',
            type: 'bar',
            data: []
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
