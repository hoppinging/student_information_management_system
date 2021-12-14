<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.example.random.entry.RandomNum" %>
<%@ page import="com.example.random.entry.Student" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.random.dao.StudentRandomDao" %>
<%@ page import="com.example.random.utils.JDBCUtil" %>
<%@ page import="com.example.random.dao.impl.StudentRandomDaoImpl" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>软外201管理系统</title>
    <link rel="stylesheet" href="./layui/css/layui.css" media="all">
    <link rel="icon"
          href="https://pic.stackoverflow.wiki/uploadImages/125/113/137/144/2021/08/04/16/00/bc3fc577-9dfb-451b-928d-3d5f9f909b89.ico">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">软外201管理系统</div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="http://localhost:8080/pages/index/index.jsp">主页</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="http://localhost:8080/pages/index/allName.jsp">名单</a></li>
            <%--            <li class="layui-nav-item layui-hide-xs"><a href="">nav 3</a></li>--%>
            <%--            <li class="layui-nav-item">--%>
            <%--                <a href="javascript:;">nav groups</a>--%>
            <%--                <dl class="layui-nav-child">--%>
            <%--                    <dd><a href="">menu 11</a></dd>--%>
            <%--                    <dd><a href="">menu 22</a></dd>--%>
            <%--                    <dd><a href="">menu 33</a></dd>--%>
            <%--                </dl>--%>
            <%--            </li>--%>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">功能系统</a>
                    <dl class="layui-nav-child">
                        <%--                        <dd><a href="javascript:;">点名</a></dd>--%>
                        <dd><a href="http://localhost:8080/pages/index/Random.jsp">抽签</a></dd>
                        <%--                        <dd><a href="javascript:;">menu 3</a></dd>--%>
                        <%--                        <dd><a href="">the links</a></dd>--%>
                    </dl>
                </li>
                <%--                <li class="layui-nav-item">--%>
                <%--                    <a href="javascript:;">menu group 2</a>--%>
                <%--                    <dl class="layui-nav-child">--%>
                <%--                        <dd><a href="javascript:;">list 1</a></dd>--%>
                <%--                        <dd><a href="javascript:;">list 2</a></dd>--%>
                <%--                        <dd><a href="">超链接</a></dd>--%>
                <%--                    </dl>--%>
                <%--                </li>--%>
                <%--                <li class="layui-nav-item"><a href="javascript:;">click menu item</a></li>--%>
                <%--                <li class="layui-nav-item"><a href="">the links</a></li>--%>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-panel">
                        <div style="padding: 30px;">
                            <div class="layui-text" align="center">
                                <h1>抽签系统</h1>
                                <h2>规则：</h2>
                                <h3>每位同学每学期有三次申请否决抽签结果的机会（对副班长负责的抽签结果有效），每次申请否决，副班长会重抽一次，直至机会用完</h3>
                                <h3>每使用一次否决权值减一，新学期恢复</h3>
                                <h3>否决权仅限在抽签结束半小时内使用</h3>
                                <h3>可私下进行活动转让，不限次数</h3>
                                <h3>抽签为最后的手段，保证永不优先使用</h3>
                                <h3>活动开始前半小时后，不支持任何理由请假、交换</h3>
                                <h3>如有特殊原因，包括但不仅限于规定时间内有课，可以不消耗权值进行抽签否决，前提是需要在活动开始一小时前，告知副班长</h3>
                                <h3>由于不看通知群没看到抽签结果的同学，或无故不参加活动者，被院校拉入黑名单，软外201班班委，概不负责</h3>
                            </div>
                            <br>
                            <br>
                            <form class="layui-form" method="post" action="/random">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">输入随机抽取的人数</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="num" lay-verify="title" autocomplete="off"
                                               placeholder="请输入抽取人数" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交
                                        </button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                                <% RandomNum randomNum = new RandomNum();%>
                                <%Connection connection = JDBCUtil.getConnection();%>
                                <%StudentRandomDao studentRandomDao = new StudentRandomDaoImpl();%>
                                <%
                                    List<Student> studentList = Arrays.asList(new Student[randomNum.num]);
                                %>
                                <%
                                    for (int i = 0; i < randomNum.num; i++) {
                                        int num = (int) (1 + Math.random() * 60);
                                        if (num != 17) {
                                            studentList.set(i, studentRandomDao.selectStudentById(connection, num));
                                        } else {
                                            i--;
                                        }
                                    }
                                %>

                            </form>
                            <%if (studentList != null) {%>
                            <table class="layui-table">
                                <colgroup>
                                    <col width="150">
                                    <col width="200">
                                    <col>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>学号</th>
                                    <th>名字</th>
                                    <th>QQ</th>
                                    <th>电话号码</th>
                                    <th>权值</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%for (Student student : studentList) {%>
                                <%
                                    do {
                                        student = studentRandomDao.selectStudentById(connection, (int) (1 + Math.random() * 60));
                                    } while (student == null);
                                %>
                                <tr>
                                    <td height="30"><%=student.getSid()%>
                                    </td>
                                    <td height="30"><%=student.getName()%>
                                    </td>
                                    <td height="30"><%=student.getQQ()%>
                                    </td>
                                    <td height="30"><%=student.getPhone()%>
                                    </td>
                                    <td height="30"><%=student.getPower()%>
                                    </td>
                                    <%}%>
                                </tr>
                                </tbody>
                            </table>
                            <%}%>
                            <%JDBCUtil.release(connection);%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        管理系统功能会逐步添加
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function (othis) {
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            , menuRight: function () {
                layer.open({
                    type: 1
                    , content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    , area: ['260px', '100%']
                    , offset: 'rt' //右上角
                    , anim: 5
                    , shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>