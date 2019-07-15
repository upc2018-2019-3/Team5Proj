<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>

<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="images/style.css" tppabs="css/style.css" />
<style>
body{height:100%;background-image: url(images/shiy.png);background-repeat:no-repeat;background-color: #2bb8ae;background-attachment:fixed;
background-position: 50% 5%; overflow:hidden;}
canvas{z-index:-1;position:absolute;}
body,td,th {
	font-size: 0.28em;
}
</style><script src="images/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

 </script>  
<body>
<dl class="admin_login">
 <dt>
  <form name="form1" method="post" action="jspmxssfglxtshfwB4?ac=adminlogin&a=a">
  <strong><font color=white>学分制学费管理系统</font></strong>
  <em>Management System</em>
 </dt>
 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" name="username" id="username"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" name="pwd" id="pwd"/>
 </dd>
 <dd>
 <div style="padding-top:10px;">
  <font color=white>身份：</font><select name="cx" id="cx">
              <option value="超级管理员">管理员</option>
			  <option value="院系学生">学生</option>
            </select>
	</div>	
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text"  placeholder="验证码" maxlength="4" class="login_txtbx" id="pagerandom" name="pagerandom">
  </div>
 &nbsp; <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" style="padding-top:10px;"> </a>
 </dd>
 <dd>
  <input type="submit" value="立即登陆" class="submit_btn"/> <input name="login" type="hidden" id="login" value="1">
 </dd>
 <dd>
 </dd>
 </form>
</dl>
</body>
</html>


