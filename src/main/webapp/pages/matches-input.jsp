<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>成绩录入</title>
    <!-- Tell the browser to be responsive to screen width -->
<%--    <meta content="width=device-width,initial-scale=1,maximum-scale=1" name="viewport">--%>
<%--    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
<%--    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-green-light sidebar-mini layout-boxed ">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->


    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                成绩录入
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/broadcast/main.do"><i class="fa fa-dashboard"></i>
                    首页</a>
                </li>
                <li class="active">成绩管理</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary" id="display" style="display: none">
                <div class="box-header with-border">
                    <h3 class="box-title">未录入成绩的项目列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th>
                                    <input id="selall" type="checkbox">
                                </th>
                                <th class="text-center">序号</th>
                                <th class="text-center">届时</th>
                                <th class="text-center">项目名称</th>
                                <th class="text-center">项目性别限制</th>
                                <th class="text-center">项目举办日期</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${event}" var="event">
                                <tr>
                                    <td><input name="id" value="${event.EId}" type="checkbox"></td>
                                    <td class="text-center">${event.EId }</td>
                                    <td class="text-center">${event.ESportmeetingid }届</td>
                                    <td class="text-center">${event.EName }</td>
                                    <td class="text-center">${event.EGender == true ? "男":"女" }</td>
                                    <td class="text-center">${event.EDateStr }</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-primary btn-xs "
                                                onclick="location.href='${pageContext.request.contextPath}/event/matchesInput.do?eId=${event.EId}'">
                                            录入
                                        </button>
                                            <%--                                            <button type="button" class="btn btn-primary btn-xs "--%>
                                            <%--                                                    onclick="location.href='${pageContext.request.contextPath}/event/manageFindDetailsByeId.do?eId=${event.EId}'">--%>
                                            <%--                                                随机分道--%>
                                            <%--                                            </button>--%>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>

        </section>

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- 底部导航 /-->

</body>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script>

    $('#dataList').DataTable({
        "paging": true,
        "lengthChange": true,
        "order": [2, 'desc'],
        "columnDefs": [{"orderable": false, "targets": 0}],
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": true,
        "language": {
            "sLoadingRecords": "正在加载...",
            "sProcessing": "正在获取数据，请稍候...",
            "sInfo": "当前显示第 _START_ 到第 _END_ 条，共 _TOTAL_ 条",
            "sInfoFiltered": "(从_MAX_条筛选 )",
            "sInfoEmpty": "共筛选到0条",
            "sSearch": "搜索:",
            "sLengthMenu": "每页显示 _MENU_ 条",
            "sZeroRecords": "没有需要录入成绩的项目",
            "paginate": {
                "sFirst": "首页",  //首页和尾页必须在pagingType设为full_numbers时才可以
                "sLast": "尾页",
                "sPrevious": "上一页",
                "sNext": "下一页",
                "first": "First page",
                "last": "Last page",
                "next": "Next page",
                "previous": "Previous page"
            }
        }
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {

        document.getElementById("display").removeAttribute("style");

        // 激活导航位置
        setSidebarActive("matches-input");

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });

    });


</script>


</body>


</html>