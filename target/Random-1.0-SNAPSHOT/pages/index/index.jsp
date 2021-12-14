<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
                            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                                <legend>软外201信息管理系统：大事记</legend>
                            </fieldset>
                            <ul class="layui-timeline">
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis"></i>
                                    <div class="layui-timeline-content layui-text">
                                        <div class="layui-timeline-title">至今，软外201信息管理系统仍在完善</div>
                                    </div>
                                </li>
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis"></i>
                                    <div class="layui-timeline-content layui-text">
                                        <div class="layui-timeline-title">2021年9月24日，软外201信息管理系统第一版完成</div>
                                    </div>
                                </li>
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
                                    <div class="layui-timeline-content layui-text">
                                        <div class="layui-timeline-title">本信息管理系统由LayUI框架搭建前端，LayUI将于2021年10月13日下线，故后期将会进行整改</div>
                                    </div>
                                </li>
                            </ul>
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
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>