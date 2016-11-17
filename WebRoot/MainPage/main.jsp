<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
	

  </head>
  
  <body>

<table  width="1100" height="100%" border="1" align="center">
  <tr>
    <td width="12%" rowspan="3" align="center"><jsp:include page="left.jsp" /></td>
    <td width="88%" height="40" colspan="5" align="center" class="title">欢迎使用个人信息管理平台</td>
  </tr>
  <tr>
    <td height="10" align="center" bgcolor="#FFCC33" class="font"><a href="user/personalInfo?user.name=<s:property value="#session.username"/>">个人信息管理</a></td>
    <td align="center" bgcolor="#FFCC33" class="font">通讯录管理</td>
    <td align="center" bgcolor="#FFCC33" class="font">日程安排管理</td>
    <td align="center" bgcolor="#FFCC33" class="font">个人文件管理</td>
    <td align="center" bgcolor="#FFCC33" class="font">退出系统</td>
  </tr>
  <tr>
    <td height="168" colspan="5" align="center"><img src="images/a.jpg" alt="正常" height="800" width="968"></td>
  </tr>
  <tr>
    <td height="10" colspan="6" align="center" bgcolor="#9999FF"><table width="100%" border="0" class="noborder">
      <tr>
        <td width="15%" height="10">当前用户：<s:property value="#session.username"/></td>
        <td width="85%" align="right">时间</td>
      </tr>
    </table></td>
  </tr>
</table>
<s:debug></s:debug>
  </body>
</html>
