<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width,minimum-scale=1.0,maximum-scale=1.0">
    <head>

        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

        <title>添加平台</title>

        <script type="text/javascript">
            function addPlat() {
                var name = $("input[name='plat_name']").val();
                var score = $("input[name='score']").val();
                if (name.length == 0) {
                    alert('请输入平台名称');
                } else if (score.length != 0 && score > 10) {
                    alert('最大为10');
                } else {
                    $.ajax({
                        url : '<%=basePath%>/app/addPlat?name=' + name
                        + '&score=' + score,
                        type : 'GET',
                        dataType : "jsonp",
                        //传递给请求处理程序，用以获得jsonp回调函数名的参数名(默认为:callback)
                        jsonp : "callback",//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                        jsonpCallback : "jsonpCallback",
                        timeout : 1000,
                        cache : false,
                        beforeSend : LoadFunction, //加载执行方法
                        error : erryFunction, //错误执行方法
                        success : succFunction
                        //成功执行方法
                    })
                    function LoadFunction() {
                    }
                    function erryFunction() {
                        alert("error");
                    }
                    function succFunction(tt) {
                        var code = tt.code;
                        if (code == 200) {
                            history.go(-1);
                        } else
                            alert("error");
                    }
                }

            };




        </script>

    </head>

<body style="color: #555555; font-size: 30px;">
<div align="center">
    <h1 style="color: #55555; font-size: 30px;">添加平台</h1>
    <br>

    <table border="0">
        <tr>
            <td align="right">平台名称：</td>
            <td><input name='plat_name' type="text"
                       style="color: #55555; font-size: 30px;" /></td>
        </tr>
        <tr>
            <td align="right">平台得分（10分制）：</td>
            <td><input type="number" name="score" onkeypress="return event.keyCode>=48&&event.keyCode<=57" ng-pattern="/[^a-zA-Z]/"
                       style="color: #55555; font-size: 30px; " /></td>
        </tr>

    </table>
    <br> <input type="button" value="添加" id="ti_jiao"
                onclick="addPlat()"
                style="color: #55555; font-size: 50px; width: 400px;" />

</div>
</body>
</html>
