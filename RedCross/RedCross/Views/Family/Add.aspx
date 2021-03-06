﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<RedCross.Models.Entities.Container.Container_List_Status>" %>
<%@ Import Namespace="RedCross" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>红会-添加家谱</title>
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/bootstrap.min.css") %>"/>
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/Style_Base_2.css") %>" />
</head>
<body>
 <%Html.RenderPartial("Navbar", "Family"); %>
    <div class="container-fluid">
    <div class="row-fluid">
    <div class="span2">
      <%Html.RenderPartial("NavStack", "PersonalHome"); %>
    </div>
    <div class="span9">
    <form class="form-horizontal" id="" action="<%=Url.Content("~/Family/Add?curPage=" + Model.curpage) %>" method="post">
    <div class="page-header">
    <h2>添加家谱成员</h2>
    </div>
     <div class="control-group">
    <label class="control-label" for="userid">学号</label>
    <div class="controls">
      <input type="text" id="userid" name="userid"/>
      <div id="useridErr" style="display:none" class="Err"></div>     
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="username">姓名</label>
    <div class="controls">
      <input type="text" id="username" name="username"/>
      <div id="usernameErr" style="display:none" class="Err"></div>         
    </div>
    </div>
    <div class="control-group">
   <label class="control-label">性别</label>
      <div class="controls">
     <label class="radio">
      <input type="radio" name="sex" value="1" checked="checked"/>
      男
    </label>
    <label class="radio">
      <input type="radio" name="sex" value="0"/>
      女
    </label>
    </div>
    </div>
     <div class="control-group">
    <label class="control-label" for="grdID">年级</label>
    <div class="controls">
    <select id="grdID" name="grdID" >
    <option></option>
    <%for (int i = 0; i < Model.list_Grd.Count; ++i)
      { %>
      <option value="<%=Model.list_Grd[i].ID %>" >
      <%=Model.list_Grd[i].Name%>
      </option>
      <%} %>
    </select>
      <div id="grdIDErr" style="display:none" class="Err"></div>         
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="clgId">学院</label>
    <div class="controls">
    <select id="clgId" name="clgId">
    <option></option>
    <%for (int i = 0; i < Model.list_Col.Count; ++i)
      { %>
      <option value="<%=Model.list_Col[i].ID %>">
      <%=Model.list_Col[i].Name%>
      </option>
      <%} %>
    </select>
      <div id="clgIdErr" style="display:none" class="Err"></div>             
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="depID">部门</label>
    <div class="controls">
    <select id="depID" name="depID">
    <option></option>
    <%for (int i = 0; i < Model.list_Dep.Count; ++i)
      { %>
      <option value="<%=Model.list_Dep[i].ID %>">
      <%=Model.list_Dep[i].Name%>
      </option>
      <%} %>
    </select>
      <div id="depIDErr" style="display:none" class="Err"></div>                 
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="wish">个性签名与祝福</label>
    <div class="controls">
      <textarea id="wish" name="wish" rows="8" cols="75"></textarea>
      <div id="wishErr" style="display:none" class="Err"></div>                     
    </div>
    </div>
     <div class="form-actions">
      <button id="familysubmit" type="submit" class="btn btn-primary">更新</button>
      <button type="button" class="btn" onclick="history.back()">取消</button>
    </div>
    </form>
    </div>
    </div>
    <%Html.RenderPartial("Bottom"); %>
    </div>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/Rc/VerifyNew.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/Rc/FamilyVerify.js") %>"></script>
</body>
</html>
