<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>运动会信息详情</title>
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
                开幕式信息详情
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/broadcast/main.do"><i class="fa fa-dashboard"></i>
                    首页</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/sportmeeting/manage.do"> 开幕信息管理</a></li>
                <li class="active">开幕信息详情</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <div class="box-body" id="display" style="display: none">

                <!--tab页-->
                <div class="nav-tabs-custom">

                    <!--tab头-->
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab-sportmeeting" data-toggle="tab">开幕式信息详情</a>
                        </li>
                    </ul>
                    <!--tab头/-->

                    <!--tab内容-->
                    <div class="tab-content">

                        <!--label显示的内容-->
                        <div class="tab-pane active" id="tab-sportmeeting">
                            <div class="row data-type">

                                <div class="col-sm-2 title">届时</div>
                                <div class="col-sm-10 data text">
                                    <input type="text"
                                           id="SId"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SId}届">
                                </div>

                                <div class="col-sm-2 title">名称</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SName}">
                                </div>

                                <div class="col-sm-2 title">主题</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white;  BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.STheme}">
                                </div>

                                <div class="col-sm-2 title">举办地点</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SPlace}">
                                </div>

                                <div class="col-sm-2 title">举办时间</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SDateStr}">
                                </div>

                                <div class="col-sm-2 title">开始时间</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SStarttimeStr}">
                                </div>

                                <div class="col-sm-2 title">结束时间</div>
                                <div class="col-sm-4 data text">
                                    <input type="text"
                                           style="background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                           class="form-control" readonly="readonly"
                                           value="${sportmeeting.SEndtimeStr}">
                                </div>

                                <div class="col-sm-2 title rowHeight2x">描述</div>
                                <div class="col-sm-10 data text rowHeight2x">
                                        <textarea rows="3"
                                                  style="resize:none; background-color: white; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"
                                                  class="form-control">${sportmeeting.SDescription}</textarea>
                                </div>

                            </div>
                        </div>
                        <br>
                    </div>

                    <!--tab页-->
                    <div class="nav-tabs-custom">

                        <!--tab头-->
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tab-broadcast" data-toggle="tab">本届广播信息</a>
                            </li>
                            <li>
                                <a href="#tab-event" data-toggle="tab">项目信息</a>
                            </li>
                            <li>
                                <a href="#tab-matches" data-toggle="tab">成绩信息</a>
                            </li>
                        </ul>

                        <!--tab头/-->

                        <!--tab内容-->
                        <div class="tab-content">

                            <!--label显示的内容-->
                            <div class="tab-pane active" id="tab-broadcast">
                                <!--工具栏-->
                                <%--                                <div class="form-group form-inline">--%>
                                <%--                                    <div class="btn-group">--%>
                                <%--                                        <button type="button" class="btn btn-default" data-toggle="modal"--%>
                                <%--                                                data-target="#myModal1" title="新建">--%>
                                <%--                                            <i class="fa fa-file-o"></i> 新建--%>
                                <%--                                        </button>--%>
                                <%--                                        <button type="button" class="btn btn-default" title="删除" id="delSelected1">--%>
                                <%--                                            <i class="fa fa-trash-o"></i> 删除--%>
                                <%--                                        </button>--%>
                                <%--                                        <button id="refresh1" type="button" class="btn btn-default" title="刷新">--%>
                                <%--                                            <i class="fa fa-refresh"></i> 刷新--%>
                                <%--                                        </button>--%>
                                <%--                                        &lt;%&ndash;                                <button type="button" class="btn btn-default" title="导出"&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                        onclick="location.href='${pageContext.request.contextPath}/sportmeeting/export.do'">&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                    <i class="fa fa-refresh"></i> 导出&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                </button>&ndash;%&gt;--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <!--工具栏/-->
                                <!--数据列表-->
                                <form id="selection1"
                                      action="${pageContext.request.contextPath}/broadcast/deleteById.do"
                                      method="post">
                                    <table id="dataList1"
                                           class="table table-bordered table-striped table-hover dataTable">
                                        <thead>
                                        <tr>
                                            <%--                                            <th>--%>
                                            <%--                                                <input id="selall1" type="checkbox">--%>
                                            <%--                                            </th>--%>
                                            <th class="text-center">序号</th>
                                            <th class="text-center">届时</th>
                                            <th class="text-center">广播主题</th>
                                            <th class="text-center">播出时间</th>
                                            <th class="text-center">内容</th>
                                            <%--                                            <th class="text-center">操作</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach items="${broadcast}" var="broadcast">
                                            <tr>
                                                    <%--                                                <td><input name="id" value="${broadcast.BId}" type="checkbox"></td>--%>
                                                <td class="text-center">${broadcast.BId }</td>
                                                <td class="text-center">${broadcast.BSportmeetingid }届</td>
                                                <td class="text-center">${broadcast.BTitle }</td>
                                                <td class="text-center">${broadcast.BTimeStr }</td>
                                                <td class="text-center">${broadcast.BContent }</td>
                                                    <%--                                                <td class="text-center">--%>
                                                    <%--                                                        &lt;%&ndash;                                        <button type="button" class="btn bg-olive btn-xs "&ndash;%&gt;--%>
                                                    <%--                                                        &lt;%&ndash;                                                onclick="location.href='${pageContext.request.contextPath}/broadcast/findDetailsBysId.do?sId=${broadcast.BSportmeetingid}'">&ndash;%&gt;--%>
                                                    <%--                                                        &lt;%&ndash;                                            详情&ndash;%&gt;--%>
                                                    <%--                                                        &lt;%&ndash;                                        </button>&ndash;%&gt;--%>
                                                    <%--                                                    <button type="button" class="btn btn-info btn-xs"--%>
                                                    <%--                                                            data-toggle="modal"--%>
                                                    <%--                                                            data-target="#myModal1"--%>
                                                    <%--                                                            onclick="getBroadcast(${broadcast.BId})">修改--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button type="button"--%>
                                                    <%--                                                            class="btn bg-red btn-xs "--%>
                                                    <%--                                                            onclick="deleteBroadcastById(${broadcast.BId})">--%>
                                                    <%--                                                        删除--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                </td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                                <!--数据列表/-->

                            </div>

                            <!--label显示的内容-->
                            <div class="tab-pane " id="tab-event">
                                <!--工具栏-->
                                <%--                                <div class="form-group form-inline">--%>
                                <%--                                    <div class="btn-group">--%>
                                <%--                                        <button type="button" class="btn btn-default" data-toggle="modal"--%>
                                <%--                                                data-target="#myModal2" title="新建">--%>
                                <%--                                            <i class="fa fa-file-o"></i> 新建--%>
                                <%--                                        </button>--%>
                                <%--                                        <button type="button" class="btn btn-default" title="删除"--%>
                                <%--                                                onclick="void(0);" id="delSelected2">--%>
                                <%--                                            <i class="fa fa-trash-o"></i> 删除--%>
                                <%--                                        </button>--%>
                                <%--                                        <button id="refresh2" type="button" class="btn btn-default" title="刷新">--%>
                                <%--                                            <i class="fa fa-refresh"></i> 刷新--%>
                                <%--                                        </button>--%>
                                <%--                                        &lt;%&ndash;                                <button type="button" class="btn btn-default" title="导出"&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                        onclick="location.href='${pageContext.request.contextPath}/sportmeeting/export.do'">&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                    <i class="fa fa-refresh"></i> 导出&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                </button>&ndash;%&gt;--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <!--工具栏/-->
                                <!--数据列表-->
                                <form id="selection2" action="${pageContext.request.contextPath}/event/deleteById.do"
                                      method="post">
                                    <table id="dataList2"
                                           class="table table-bordered table-striped table-hover dataTable">
                                        <thead>
                                        <tr>
                                            <%--                                            <th>--%>
                                            <%--                                                <input id="selall2" type="checkbox">--%>
                                            <%--                                            </th>--%>
                                            <th class="text-center">序号</th>
                                            <th class="text-center">届时</th>
                                            <th class="text-center">项目名称</th>
                                            <th class="text-center">项目性别限制</th>
                                            <th class="text-center">项目举办日期</th>
                                            <%--                                            <th class="text-center">操作</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach items="${event}" var="event">
                                            <tr>
                                                    <%--                                                <td><input name="id" value="${event.EId}" type="checkbox"></td>--%>
                                                <td class="text-center">${event.EId }</td>
                                                <td class="text-center">${event.ESportmeetingid }届</td>
                                                <td class="text-center">${event.EName }</td>
                                                <td class="text-center">${event.EGender == true ? "男":"女" }</td>
                                                <td class="text-center">${event.EDateStr }</td>
                                                    <%--                                                <td class="text-center">--%>
                                                    <%--                                                    <button type="button" class="btn bg-olive btn-xs "--%>
                                                    <%--                                                            onclick="location.href='${pageContext.request.contextPath}/event/manageFindDetailsByeId.do?eId=${event.EId}'">--%>
                                                    <%--                                                        详情--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button type="button" class="btn btn-info btn-xs"--%>
                                                    <%--                                                            data-toggle="modal"--%>
                                                    <%--                                                            data-target="#myModal2" onclick="getEvent(${event.EId})">修改--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button type="button"--%>
                                                    <%--                                                            class="btn bg-red btn-xs "--%>
                                                    <%--                                                            onclick="deleteEventById(${event.EId})">--%>
                                                    <%--                                                        删除--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                </td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                                <!--数据列表/-->
                            </div>

                            <!--label显示的内容-->
                            <div class="tab-pane " id="tab-matches">
                                <!--工具栏-->
                                <%--                                <div class="form-group form-inline">--%>
                                <%--                                    <div class="btn-group">--%>
                                <%--                                        <button type="button" class="btn btn-default" data-toggle="modal"--%>
                                <%--                                                data-target="#myModal3" title="新建">--%>
                                <%--                                            <i class="fa fa-file-o"></i> 新建--%>
                                <%--                                        </button>--%>
                                <%--                                        <button type="button" class="btn btn-default" title="删除"--%>
                                <%--                                                onclick="void(0);" id="delSelected3">--%>
                                <%--                                            <i class="fa fa-trash-o"></i> 删除--%>
                                <%--                                        </button>--%>
                                <%--                                        <button id="refresh3" type="button" class="btn btn-default" title="刷新">--%>
                                <%--                                            <i class="fa fa-refresh"></i> 刷新--%>
                                <%--                                        </button>--%>
                                <%--                                        &lt;%&ndash;                                <button type="button" class="btn btn-default" title="导出"&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                        onclick="location.href='${pageContext.request.contextPath}/sportmeeting/export.do'">&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                    <i class="fa fa-refresh"></i> 导出&ndash;%&gt;--%>
                                <%--                                        &lt;%&ndash;                                </button>&ndash;%&gt;--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <!--工具栏/-->
                                <!--数据列表-->
                                <form id="selection3" action="${pageContext.request.contextPath}/matches/deleteById.do"
                                      method="post">
                                    <table id="dataList3"
                                           class="table table-bordered table-striped table-hover dataTable">
                                        <thead>
                                        <tr>
                                            <%--                                            <th>--%>
                                            <%--                                                <input id="selall3" type="checkbox">--%>
                                            <%--                                            </th>--%>
                                            <th class="text-center">序号</th>
                                            <th class="text-center">届时</th>
                                            <th class="text-center">参赛人ID</th>
                                            <th class="text-center">姓名</th>
                                            <th class="text-center">项目ID</th>
                                            <th class="text-center">项目名称</th>
                                            <th class="text-center">分道</th>
                                            <th class="text-center">成绩</th>
                                            <th class="text-center">排名</th>
                                            <%--                                            <th class="text-center">操作</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach items="${matches}" var="matches">
                                            <tr>
                                                    <%--                                                <td><input name="id" value="${matches.MId}" type="checkbox"></td>--%>
                                                <td class="text-center">${matches.MId }</td>
                                                <td class="text-center">${matches.event.ESportmeetingid }届</td>
                                                <td class="text-center">${matches.MNo }</td>
                                                <td class="text-center">${matches.user.student.SName }</td>
                                                <td class="text-center">${matches.MEid }</td>
                                                <td class="text-center">${matches.event.EName }</td>
                                                <td class="text-center">${matches.MSort == null ? "未分道":matches.MSort }</td>
                                                <td class="text-center">${matches.MScore == null ? "未录入":matches.MScore }${matches.MScore == null ? "":matches.event.EUnit}</td>
                                                <td class="text-center">${matches.MRank == null ? "未排名":matches.MRank }</td>
                                                    <%--                                                <td class="text-center">--%>
                                                    <%--                                                    <button type="button" class="btn bg-olive btn-xs "--%>
                                                    <%--                                                            onclick="location.href='${pageContext.request.contextPath}/matches/findDetailsBymId.do?mId=${matches.MId}'">--%>
                                                    <%--                                                        详情--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button type="button" class="btn btn-info btn-xs"--%>
                                                    <%--                                                            data-toggle="modal"--%>
                                                    <%--                                                            data-target="#myModal3"--%>
                                                    <%--                                                            onclick="getMatches(${matches.MId})">修改--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button type="button"--%>
                                                    <%--                                                            class="btn bg-red btn-xs "--%>
                                                    <%--                                                            onclick="deleteMatchesById(${matches.MId})">--%>
                                                    <%--                                                        删除--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                </td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                                <!--数据列表/-->
                            </div>


                        </div>


                    </div>

                </div>

            </div>

            <%--保存弹出窗--%>
            <%--            <div id="myModal1" class="modal fade" role="dialog" aria-hidden="true">--%>
            <%--                <div class="modal-dialog" role="document">--%>
            <%--                    <form id="myForm1" method="post">--%>
            <%--                        <div class="modal-content" style="border-radius: 6px">--%>
            <%--                            <div class="modal-header">--%>
            <%--                                <h4 class="modal-title" id="title1">新建</h4>--%>
            <%--                            </div>--%>
            <%--                            <div class="modal-body">--%>
            <%--                                <div class="form-group">--%>

            <%--                                    &lt;%&ndash;updateOrInsert 用于判断当前模态窗口是新增还是修改&ndash;%&gt;--%>
            <%--                                    <input type="hidden" id="updateOrInsert1" name="updateOrInsert1" value="insert">--%>

            <%--                                    <input id="BId" type="hidden" class="form-control rounded" placeholder="序号"--%>
            <%--                                           name="BId" required="required">--%>

            <%--                                    <label for="BSportmeetingid" class="col-sm-3 control-label">届时</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" id="BSportmeetingid" class="form-control" placeholder="届时"--%>
            <%--                                               name="BSportmeetingid"--%>
            <%--                                               required="required"/>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="BTitle" class="col-sm-3 control-label">主题</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="主题" id="BTitle" name="BTitle" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="BTime" class="col-sm-3 control-label">播出时间</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <div class="input-group date">--%>
            <%--                                            <div class="input-group-addon">--%>
            <%--                                                <i class="fa fa-calendar"></i>--%>
            <%--                                            </div>--%>
            <%--                                            <input type="text" class="form-control pull-right"--%>
            <%--                                                   placeholder="播出时间" id="BTime" name="BTime" required="required">--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="BContent" class="col-sm-3 control-label">内容</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="内容" id="BContent" name="BContent" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>

            <%--                            <div class="modal-footer">--%>
            <%--                                <button id="btn1" type="submit" class="btn bg-maroon">保存</button>--%>
            <%--                                <button type="button" class="btn bg-blue" data-dismiss="modal">关闭</button>--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </form>--%>
            <%--                    <!-- /.modal-content -->--%>
            <%--                </div>--%>
            <%--                <!-- /.modal-dialog -->--%>
            <%--            </div>--%>


            <%--保存弹出窗--%>
            <%--            <div id="myModal2" class="modal fade" role="dialog" aria-hidden="true">--%>
            <%--                <div class="modal-dialog" role="document">--%>
            <%--                    <form id="myForm2" method="post">--%>
            <%--                        <div class="modal-content" style="border-radius: 6px">--%>
            <%--                            <div class="modal-header">--%>
            <%--                                <h4 class="modal-title" id="title2">新建</h4>--%>
            <%--                            </div>--%>
            <%--                            <div class="modal-body">--%>
            <%--                                <div class="form-group">--%>

            <%--                                    &lt;%&ndash;updateOrInsert 用于判断当前模态窗口是新增还是修改&ndash;%&gt;--%>
            <%--                                    <input type="hidden" id="updateOrInsert2" name="updateOrInsert2" value="insert">--%>

            <%--                                    <input id="EId" type="hidden" class="form-control rounded" placeholder="序号"--%>
            <%--                                           name="EId" required="required">--%>

            <%--                                    <label for="ESportmeetingid" class="col-sm-3 control-label">届时</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" id="ESportmeetingid" class="form-control" placeholder="届时"--%>
            <%--                                               name="ESportmeetingid"--%>
            <%--                                               required="required"/>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EName" class="col-sm-3 control-label">项目名称</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="项目名称" id="EName" name="EName" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EGender" class="col-sm-3 control-label">参赛性别限制</label>--%>
            <%--                                    <div class="col-sm-9 data">--%>
            <%--                                        <select id="EGender" style="width: 100%;" name="EGender" class="form-control">--%>
            <%--                                            <option value="0">女</option>--%>
            <%--                                            <option value="1">男</option>--%>
            <%--                                        </select>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EPlace" class="col-sm-3 control-label">项目举办地点</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="项目举办地点" id="EPlace" name="EPlace" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EDate" class="col-sm-3 control-label">项目比赛时间</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <div class="input-group date">--%>
            <%--                                            <div class="input-group-addon">--%>
            <%--                                                <i class="fa fa-calendar"></i>--%>
            <%--                                            </div>--%>
            <%--                                            <input type="text" class="form-control pull-right"--%>
            <%--                                                   placeholder="项目比赛时间" id="EDate" name="EDate" required="required">--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EStarttime" class="col-sm-3 control-label">报名开始时间</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <div class="input-group date">--%>
            <%--                                            <div class="input-group-addon">--%>
            <%--                                                <i class="fa fa-calendar"></i>--%>
            <%--                                            </div>--%>
            <%--                                            <input type="text" class="form-control pull-right"--%>
            <%--                                                   placeholder="报名开始时间" id="EStarttime" name="EStarttime"--%>
            <%--                                                   required="required">--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EEndtime" class="col-sm-3 control-label">报名结束时间</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <div class="input-group date">--%>
            <%--                                            <div class="input-group-addon">--%>
            <%--                                                <i class="fa fa-calendar"></i>--%>
            <%--                                            </div>--%>
            <%--                                            <input type="text" class="form-control pull-right"--%>
            <%--                                                   placeholder="报名结束时间" id="EEndtime" name="EEndtime"--%>
            <%--                                                   required="required">--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EJudgementid" class="col-sm-3 control-label">裁判人ID</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="裁判人ID" id="EJudgementid" name="EJudgementid"--%>
            <%--                                               required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="EUnit" class="col-sm-3 control-label">成绩记录单位</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="成绩记录单位" id="EUnit" name="EUnit" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="ERules" class="col-sm-3 control-label">比赛规则</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="比赛规则" id="ERules" name="ERules" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>

            <%--                            <div class="modal-footer">--%>
            <%--                                <button id="btn2" type="submit" class="btn bg-maroon">保存</button>--%>
            <%--                                <button type="button" class="btn bg-blue" data-dismiss="modal">关闭</button>--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </form>--%>
            <%--                    <!-- /.modal-content -->--%>
            <%--                </div>--%>
            <%--                <!-- /.modal-dialog -->--%>
            <%--            </div>--%>


            <%--保存弹出窗--%>
            <%--            <div id="myModal3" class="modal fade" role="dialog" aria-hidden="true">--%>
            <%--                <div class="modal-dialog" role="document">--%>
            <%--                    <form id="myForm3" method="post">--%>
            <%--                        <div class="modal-content" style="border-radius: 6px">--%>
            <%--                            <div class="modal-header">--%>
            <%--                                <h4 class="modal-title" id="title3">新建</h4>--%>
            <%--                            </div>--%>
            <%--                            <div class="modal-body">--%>
            <%--                                <div class="form-group">--%>

            <%--                                    &lt;%&ndash;updateOrInsert 用于判断当前模态窗口是新增还是修改&ndash;%&gt;--%>
            <%--                                    <input type="hidden" id="updateOrInsert3" name="updateOrInsert3" value="insert">--%>

            <%--                                    <input id="MId" type="hidden" class="form-control rounded" placeholder="序号"--%>
            <%--                                           name="MId" required="required">--%>

            <%--                                    <label for="MNo" class="col-sm-3 control-label">参赛人ID</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="参赛人ID" id="MNo" name="MNo" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="MEid" class="col-sm-3 control-label">参赛项目ID</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="参赛项目ID" id="MEid" name="MEid" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="MSort" class="col-sm-3 control-label">分道</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="分道结果" id="MSort" name="MSort"--%>
            <%--                                               required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="MScore" class="col-sm-3 control-label">成绩</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="成绩" id="MScore" name="MScore" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                    <label for="MRank" class="col-sm-3 control-label">排名</label>--%>
            <%--                                    <div class="col-sm-9">--%>
            <%--                                        <input type="text" class="form-control pull-right"--%>
            <%--                                               placeholder="排名" id="MRank" name="MRank" required="required">--%>
            <%--                                    </div>--%>
            <%--                                    <br>--%>
            <%--                                    <br>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>

            <%--                            <div class="modal-footer">--%>
            <%--                                <button id="btn3" type="submit" class="btn bg-maroon">保存</button>--%>
            <%--                                <button type="button" class="btn bg-blue" data-dismiss="modal">关闭</button>--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </form>--%>
            <%--                    <!-- /.modal-content -->--%>
            <%--                </div>--%>
            <%--                <!-- /.modal-dialog -->--%>
            <%--            </div>--%>


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
<script>


    $('#dataList1').DataTable({
        "paging": true,
        "lengthChange": true,
        "order": [1, 'desc'],
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
            "sZeroRecords": "无相关记录",
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

    <%--$('#myModal1').on('hidden.bs.modal', function () {--%>
    <%--    document.getElementById("myForm").reset();--%>
    <%--    $("#btn1").text('保存');--%>
    <%--    $("#title1").text('新增');--%>
    <%--});--%>

    <%--function getBroadcast(id) {--%>
    <%--    //请求角色列表--%>
    <%--    var url = "${pageContext.request.contextPath}/broadcast/findById.do?id=" + id;--%>
    <%--    $.get(url, function (data) {--%>
    <%--        document.getElementById("updateOrInsert1").value = "update";--%>
    <%--        document.getElementById("BId").value = id;--%>
    <%--        document.getElementById("BSportmeetingid").value = data.bSportmeetingid;--%>
    <%--        document.getElementById("BTitle").value = data.bTitle;--%>
    <%--        document.getElementById("BTime").value = data.bTimeStr;--%>
    <%--        document.getElementById("BContent").value = data.bContent;--%>
    <%--        $("#btn1").text('修改');--%>
    <%--        $("#title1").text('修改');--%>
    <%--    });--%>
    <%--}--%>


    <%--$("#myForm1").submit(function () {--%>
    <%--    //todo 解决空格变成加号问题--%>
    <%--    var data = $('#myForm1').serialize().replace(/\+/g, " ");--%>
    <%--    data = decodeURIComponent(data, true);--%>
    <%--    //处理data 转成json格式--%>
    <%--    var dataArr = data.split("&");--%>
    <%--    var res = {};--%>
    <%--    for (var i = 0; i < dataArr.length; i++) {--%>
    <%--        var str = dataArr[i].split("=");--%>
    <%--        res[str[0]] = str[1];--%>
    <%--    }--%>

    <%--    if (res['updateOrInsert1'] == 'update') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/broadcast/update.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("修改失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("修改成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    } else if (res['updateOrInsert1'] == 'insert') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/broadcast/insert.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("新建失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("新建成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    }--%>
    <%--});--%>


    <%--function deleteBroadcastById(id) {--%>
    <%--    if (confirm("您确定要删除吗？")) {--%>
    <%--        location.href = '${pageContext.request.contextPath}/broadcast/deleteById.do?id=' + id;--%>
    <%--    }--%>
    <%--}--%>

    <%--document.getElementById("delSelected1").onclick = function () {--%>
    <%--    if (confirm("你确定要删除选中条目吗"))--%>
    <%--    {--%>
    <%--        document.getElementById("selection1").submit();--%>
    <%--    }--%>
    <%--};--%>


    $('#dataList2').DataTable({
        "paging": true,
        "lengthChange": true,
        "order": [1, 'desc'],
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
            "sZeroRecords": "无相关记录",
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

    <%--$('#myModal2').on('hidden.bs.modal', function () {--%>
    <%--    document.getElementById("myForm2").reset();--%>
    <%--    $("#btn2").text('保存');--%>
    <%--    $("#title2").text('新增');--%>
    <%--});--%>

    <%--function getEvent(id) {--%>
    <%--    //请求角色列表--%>
    <%--    var url = "${pageContext.request.contextPath}/event/findById.do?id=" + id;--%>
    <%--    $.get(url, function (data) {--%>
    <%--        document.getElementById("updateOrInsert2").value = "update";--%>
    <%--        document.getElementById("EId").value = id;--%>
    <%--        document.getElementById("ESportmeetingid").value = data.eSportmeetingid;--%>
    <%--        $("#EGender").val(data.eGender == false ? '0' : '1').trigger("change");--%>
    <%--        document.getElementById("EName").value = data.eName;--%>
    <%--        document.getElementById("EPlace").value = data.ePlace;--%>
    <%--        document.getElementById("EDate").value = data.eDate;--%>
    <%--        document.getElementById("EStarttime").value = data.eStarttime;--%>
    <%--        document.getElementById("EEndtime").value = data.eEndtime;--%>
    <%--        document.getElementById("EJudgementid").value = data.eJudgementid;--%>
    <%--        document.getElementById("EUnit").value = data.eUnit;--%>
    <%--        document.getElementById("ERules").value = data.eRules;--%>
    <%--        $("#btn2").text('修改');--%>
    <%--        $("#title2").text('修改');--%>
    <%--    });--%>
    <%--}--%>


    <%--$("#myForm2").submit(function () {--%>
    <%--    //todo 解决空格变成加号问题--%>
    <%--    var data = $('#myForm').serialize().replace(/\+/g, " ");--%>
    <%--    data = decodeURIComponent(data, true);--%>
    <%--    //处理data 转成json格式--%>
    <%--    var dataArr = data.split("&");--%>
    <%--    var res = {};--%>
    <%--    for (var i = 0; i < dataArr.length; i++) {--%>
    <%--        var str = dataArr[i].split("=");--%>
    <%--        res[str[0]] = str[1];--%>
    <%--    }--%>

    <%--    if (res['updateOrInsert2'] == 'update') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/event/update.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("修改失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("修改成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    } else if (res['updateOrInsert2'] == 'insert') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/event/insert.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("新建失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("新建成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    }--%>
    <%--});--%>


    <%--function deleteEventById(id) {--%>
    <%--    if (confirm("您确定要删除吗？")) {--%>
    <%--        location.href = '${pageContext.request.contextPath}/event/deleteById.do?id=' + id;--%>
    <%--    }--%>
    <%--}--%>

    <%--document.getElementById("delSelected2").onclick = function () {--%>
    <%--    if (confirm("你确定要删除选中条目吗"))--%>
    <%--    {--%>
    <%--        document.getElementById("selection2").submit();--%>
    <%--    }--%>
    <%--};--%>


    $('#dataList3').DataTable({
        "paging": true,
        "lengthChange": true,
        "order": [1, 'desc'],
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
            "sZeroRecords": "无相关记录",
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

    <%--$('#myModal3').on('hidden.bs.modal', function () {--%>
    <%--    document.getElementById("myForm3").reset();--%>
    <%--    $("#btn3").text('保存');--%>
    <%--    $("#title3").text('新增');--%>
    <%--});--%>

    <%--function getMatches(id) {--%>
    <%--    //请求角色列表--%>
    <%--    var url = "${pageContext.request.contextPath}/matches/findById.do?id=" + id;--%>
    <%--    $.get(url, function (data) {--%>
    <%--        document.getElementById("updateOrInsert3").value = "update";--%>
    <%--        document.getElementById("MId").value = id;--%>
    <%--        document.getElementById("MNo").value = data.mNo;--%>
    <%--        document.getElementById("MEid").value = data.mEid;--%>
    <%--        if (data.mSort != null)--%>
    <%--            document.getElementById("MSort").value = data.mSort;--%>
    <%--        else--%>
    <%--            document.getElementById("MSort").value = "";--%>
    <%--        if (data.mScore != null)--%>
    <%--            document.getElementById("MScore").value = data.mScore;--%>
    <%--        else--%>
    <%--            document.getElementById("MScore").value = "";--%>
    <%--        if (data.mRank != null)--%>
    <%--            document.getElementById("MRank").value = data.mRank;--%>
    <%--        else--%>
    <%--            document.getElementById("MRank").value = "";--%>
    <%--        $("#btn3").text('修改');--%>
    <%--        $("#title3").text('修改');--%>
    <%--    });--%>
    <%--}--%>


    <%--$("#myForm3").submit(function () {--%>
    <%--    //todo 解决空格变成加号问题--%>
    <%--    var data = $('#myForm').serialize().replace(/\+/g, " ");--%>
    <%--    data = decodeURIComponent(data, true);--%>
    <%--    //处理data 转成json格式--%>
    <%--    var dataArr = data.split("&");--%>
    <%--    var res = {};--%>
    <%--    for (var i = 0; i < dataArr.length; i++) {--%>
    <%--        var str = dataArr[i].split("=");--%>
    <%--        res[str[0]] = str[1];--%>
    <%--    }--%>

    <%--    if (res['updateOrInsert3'] == 'update') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/matches/update.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("修改失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("修改成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    } else if (res['updateOrInsert3'] == 'insert') {--%>
    <%--        $.ajax({--%>
    <%--            type: "POST",   //提交的方法--%>
    <%--            dataType: "json",--%>
    <%--            contentType: 'application/json',//添加这句话--%>
    <%--            url: "${pageContext.request.contextPath}/matches/insert.do", //提交的地址--%>
    <%--            async: false,--%>
    <%--            data: JSON.stringify(res),--%>
    <%--            error: function () {  //失败的话--%>
    <%--                alert("新建失败!")--%>
    <%--            },--%>
    <%--            success: function () {  //成功--%>
    <%--                alert("新建成功!")--%>
    <%--            }--%>
    <%--        });--%>
    <%--    }--%>
    <%--});--%>

    <%--function deleteMatchesById(id) {--%>
    <%--    if (confirm("您确定要删除吗？")) {--%>
    <%--        location.href = '${pageContext.request.contextPath}/matches/deleteById.do?id=' + id;--%>
    <%--    }--%>
    <%--}--%>

    <%--document.getElementById("delSelected3").onclick = function () {--%>
    <%--    if (confirm("你确定要删除选中条目吗"))--%>
    <%--    {--%>
    <%--        document.getElementById("selection3").submit();--%>
    <%--    }--%>
    <%--};--%>

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("sportmeeting-manage");

        document.getElementById("display").removeAttribute("style");

        // $("#refresh1").click(function () {
        //     window.location.reload(true);
        // });
        //
        // $("#refresh2").click(function () {
        //     window.location.reload(true);
        // });
        //
        // $("#refresh3").click(function () {
        //     window.location.reload(true);
        // });

        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });

        // $('#BTime').datetimepicker({
        //     format: "yyyy-mm-dd hh:ii:ss",
        //     autoclose: true,
        //     todayBtn: true,
        //     language: "zh-CN"
        // });

        // $('#EDate').datetimepicker({
        //     format: "yyyy-mm-dd hh:ii:ss",
        //     autoclose: true,
        //     todayBtn: true,
        //     language: "zh-CN"
        // });
        // $('#EStarttime').datetimepicker({
        //     format: "yyyy-mm-dd hh:ii:ss",
        //     autoclose: true,
        //     todayBtn: true,
        //     language: "zh-CN"
        // });
        // $('#EEndtime').datetimepicker({
        //     format: "yyyy-mm-dd hh:ii:ss",
        //     autoclose: true,
        //     todayBtn: true,
        //     language: "zh-CN"
        // });

        // // 全选操作
        // $("#selall1").click(function () {
        //     var clicks = $(this).is(':checked');
        //     if (!clicks) {
        //         $("#dataList1 td input[type='checkbox']").iCheck("uncheck");
        //     } else {
        //         $("#dataList1 td input[type='checkbox']").iCheck("check");
        //     }
        //     $(this).data("clicks", !clicks);
        // });
        //
        // // 全选操作
        // $("#selall2").click(function () {
        //     var clicks = $(this).is(':checked');
        //     if (!clicks) {
        //         $("#dataList2 td input[type='checkbox']").iCheck("uncheck");
        //     } else {
        //         $("#dataList2 td input[type='checkbox']").iCheck("check");
        //     }
        //     $(this).data("clicks", !clicks);
        // });
        //
        // // 全选操作
        // $("#selall3").click(function () {
        //     var clicks = $(this).is(':checked');
        //     if (!clicks) {
        //         $("#dataList3 td input[type='checkbox']").iCheck("uncheck");
        //     } else {
        //         $("#dataList3 td input[type='checkbox']").iCheck("check");
        //     }
        //     $(this).data("clicks", !clicks);
        // });


    });


</script>


</body>


</html>