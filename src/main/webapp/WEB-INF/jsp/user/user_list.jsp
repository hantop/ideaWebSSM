<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>用户管理页</title>
    <link rel="shortcut icon" href="<%=basePath%>img/favicon.ico" type="image/x-icon" />
    <link href="<%=basePath%>static/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>static/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath%>static/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <p class="navbar-text">后台管理</p>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <p class="navbar-text"><span class="glyphicon glyphicon-user"></span> 欢迎您：<span id="login_username"></span></p>
                <p class="navbar-text">共<span class="badge" id="xinzeng" style="cursor:pointer;" onclick="checkToday();">0</span>条数据</p>
                <li><a href="#" id="sys_exit" onclick="sys_Exit();"><span class="glyphicon glyphicon-off"></span>退出系统</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <!-- <div class="btn-group btn-group-justified" role="group"
        aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-default"
                onclick="checkToday();">
                <span class="glyphicon glyphicon-search"></span> 查询今日数据
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-default" onclick="checkAll();">
                <span class="glyphicon glyphicon-hdd"></span> 查询所有数据
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-default"
                onclick="exporyToday();">
                <span class="glyphicon glyphicon-arrow-down"></span> 导出今日数据到excel
            </button>
        </div>
    </div> -->
    <br/><br/><br/>
    <button type="button" class="btn btn-default"
            onclick="exporyAll();">
        <span class="glyphicon glyphicon-arrow-down"></span> 导出历史数据到excel
    </button>
    <table id="dtb" data-toggle="table" data-url="<%=basePath%>app/usertestlist"
           class="table table-hover" data-show-columns="true" data-search="true"
           data-show-refresh="true" data-show-toggle="true"
           data-show-export="true"
           data-export-types="['json', 'xml', 'csv', 'txt', 'sql', 'excel']"
           data-height="450" data-side-pagination="server"
           data-pagination="true" data-page-list="[5, 10, 20, 50, 100, 200]"
           data-query-params="makeparmter">
        <thead>

        <tr>
            <th data-field="id" data-formatter="hideIdFormatter" class="hide"></th>
            <th data-field="userName" data-align="left">姓名</th>
            <th data-field="sex" data-align="center">性别</th>
            <th data-field="age">年龄</th>
            <th data-field="phone">手机号</th>
            <th data-field="deliveryaddress">收货地址</th>
            <th data-field="adddate">添加时间</th>
            <th data-field="operate" data-formatter="operateFormatter"
                data-events="operateEvents">操作</th>
        </tr>
        </thead>
    </table>

    <div class="modal fade" id="edit_user_modal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">编辑当前用户的资料</h4>
                </div>
                <div class="modal-body">
                    <input id="user_phone" name="phone" type="text" class="form-control" value="" pattern="" required="required" />
                    <input id="user_id" name="id" type="hidden" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary"
                            onclick="save_user();">保存</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="xinzengrows" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">今日新增的用户数据</h4>
                </div>
                <div class="modal-body">
                    <table class="table">

                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

</div>
<script src="<%=basePath%>static/jquery.min.js"></script>
<script src="<%=basePath%>static/bootstrap/bootstrap.min.js"></script>
<script src="<%=basePath%>static/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>static/bootstrap-table/bootstrap-table-export.min.js"></script>
<script src="<%=basePath%>static/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<script src="<%=basePath%>static/tableExport.js"></script>
<script src="<%=basePath%>static/echarts.min.js"></script>
<script src="<%=basePath%>static/bootbox.min.js"></script>
<script src="<%=basePath%>static/moment.min.js"></script>
<script src="<%=basePath%>static/moment.zh-cn.js"></script>
<script src="<%=basePath%>static/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
    $(function(){
        $.getJSON('newdata',function(data){
            $("#xinzeng").text(data.newcount);
            $("#xinzeng").tooltip({"title":"今日新增数据，点击查看","placement":"bottom"});
            $("#xinzeng").mouseover();
            $("#login_username").text(data.username);
        });
    });

    function operateFormatter(value, row, index) {
        return [
            '<a class="edit ml10" style="color:black;" href="javascript:void(0)" title="编辑">',
            '<span class="glyphicon glyphicon-edit"></span>',
            '</a>&emsp;',
            '<a class="remove ml10" style="color:black;" href="javascript:void(0)" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }

    function hideIdFormatter(value, row, index) {
        return "<input type='hidden' value="+value+" name='id' />";
    }

    window.operateEvents = {
        'click .like': function (e, value, row, index) {
            alert('You click like icon, row: ' + JSON.stringify(row));
            console.log(value, row, index);
        },
        'click .edit': function (e, value, row, index) {
            $("#user_phone").val(row.phone);
            $("#user_id").val(row.id);
            $("#edit_user_modal").modal("show");
            //alert('You click edit icon, row: ' + JSON.stringify(row));
            //console.log(value, row, index);
        },
        'click .remove': function (e, value, row, index) {
            //alert('You click remove icon, row: ' + JSON.stringify(row));
            var delid=$("[data-index="+index+"]").find('td').eq(0).children().first().val();
            if(confirm("确定删除该条记录吗？"+delid)){
                $.getJSON('user/delete',{"id":delid},function(data){
                    $("#dtb").bootstrapTable('refresh');
                });
            }
            console.log(value, row, index);
        }
    };

    function refreshTable(){
        $("table").bootstrapTable('refresh', {
            url:$("table").attr('data-url')
        });
    }

    function makeparmter(params) {
        params.queryby=$("#queryby").val();
        var ret='';
        for(var i in params){
            ret+=i+':'+params[i];
        }
        //alert(ret);
        return params;
    }

    function save_user(){
        $.post('user/update',{"phone":$("#user_phone").val(),"id":$("#user_id").val()},function(){
            $("#edit_user_modal").modal('hide');
            $("#user_id").val('');
            $("#user_phone").val('');
            refreshTable();
        });
    }

    function checkToday(){
        $("#queryby").val('0');
        refreshTable();
    }

    function checkAll(){
        $("#queryby").val('1');
        refreshTable();
    }

    function sys_Exit(){
        if(confirm("确定退出系统吗")){
            window.location.href="exit";
        }
    }
    function exporyToday(){
        if(confirm("确定导出当天记录吗？")){
            window.location.href="user/export";
        }
    }
    function exporyAll(){
        if(confirm("确定导出所有记录吗？")){
            window.location.href="export";
        }
    }
</script>
</body>
</html>
