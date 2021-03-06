﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<RedCross.Models.Entities.Container.Container_UWork>" %>
<%@import Namespace="RedCross" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>红会-安排工作</title>
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/bootstrap.min.css") %>"/>
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/Style_Base_2.css") %>" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/Tool/calendar.js") %>"></script>
</head>
<body>
 <%Html.RenderPartial("Navbar", "Activity"); %>
    <div class="container-fluid">
    <div class="row-fluid">
    <div class="span2">
      <%Html.RenderPartial("NavStack", "Activity"); %>
    </div>
    <div class="span9">
    <form class="form-horizontal" id="" name="work" action="<%=Url.Content("~/Work/Add") %>" method="post">
    <div class="page-header">
    <h1 class="page-header-title">安排工作</h1>
    </div>
    <div style="display:none"><input name="activityId" value="<%=Model.activityId %>"/></div>
    <div class="control-group">
    <label class="control-label" for="status">当前状态</label>
    <div class="controls">
    <select id="status" name="status">
    <%foreach(var key in Model.hash_work.Keys)
      { %>
          <option value="<%=key%>">
          <%=Model.hash_work[key]%></option>
      <%} %>
    </select>
      <div id="statusErr" style="display:none" class="Err"></div>     
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="userId">学号</label>
    <div class="controls">
        <select id="userId" name="userId">
    <option></option>
        <%for (int i = 0; i < Model.list_ub.Count; ++i)
          {%>
          <option value="<%=Model.list_ub[i].UserID %>">
          <%=Model.list_ub[i].UserID%></option>
        <%} %>
    </select>
    <div id="userIdErr" style="display:none" class="Err"></div>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="userName">姓名</label>
    <div class="controls">
    <select id="userName" name="userName">
    <option></option>
        <%for (int i = 0; i < Model.list_ub.Count; ++i)
          {%>
          <option value="<%=Model.list_ub[i].UserName %>">
          <%=Model.list_ub[i].UserName%></option>
        <%} %>
    </select>
    <div id="userNameErr" style="display:none" class="Err"></div>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="content">工作内容</label>
    <div class="controls">
      <textarea id="content" name="content" rows="8" cols="75"></textarea>
      <div id="contentErr" style="display:none" class="Err"></div>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="startdate">开始时间</label>
    <div class="controls">
      <input type="text" id="startdate" name="startdate" onclick="calendar.show(this);"/>
      <div id="startdateErr" style="display:none" class="Err"></div>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="cutoffdate">截至时间</label>
    <div class="controls">
      <input type="text" id="cutoffdate" name="cutoffdate" onclick="calendar.show(this);"/>
      <div id="cutoffdateErr" style="display:none" class="Err"></div>
    </div>
    </div>
<%--    <div class="control-group">
    <label class="control-label" for="improvecontent">改进内容</label>
    <div class="controls">
      <textarea id="improvecontent" name="improvecontent" rows="8" cols="75"></textarea>
    </div>
    </div>
     <div class="control-group">
    <label class="control-label" for="imporvecutoffdate">改进截至时间</label>
    <div class="controls">
      <input type="text" id="imporvecutoffdate" name="imporvecutoffdate"/>
    </div>
    </div>--%>
    <div class="form-actions">
      <button id="worksubmit" type="submit" class="btn btn-primary" name="btnWork">添加</button>
      <button type="button" class="btn" onclick="history.back()">取消</button>
    </div>
    </form>
    </div>
    </div>
    </div>

    <%Html.RenderPartial("Bottom"); %>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/Rc/VerifyNew.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/Rc/WorkVerify.js") %>"></script>
</body>
</html>
