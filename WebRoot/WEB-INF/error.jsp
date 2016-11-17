<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <s:set var="n" value="#parameters.n[0]"/>
<s:if test='#n=="login_false"'>
 	 <script language=javascript>alert('       登录失败！\n\n用户不存在或密码错误！');location.href="user/show";</script>
  </s:if>

  <s:if test='#n=="file_delete"'>
 	 <script language=javascript>alert('   删除失败！\n文件已被另一程序打开');location.href="files/files_showDownLoad";</script>
  </s:if>
    <br>
    <s:debug></s:debug>
  </body>
</html>
