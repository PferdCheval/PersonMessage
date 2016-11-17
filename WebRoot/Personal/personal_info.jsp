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
  
  <body bgcolor="#CCCCFF">

<table  width="1100" height="100%" border="1" align="center">
  <tr>
    <td width="10%" rowspan="3" valign="top"><img alt="你好" src="images/cc.gif" width="110"></td>
    <td width="90%" height="40" colspan="5" align="center" class="title">欢迎使用个人信息管理平台</td>
  </tr>
  <tr>
    <td height="10"><jsp:include page="../top.jsp" /></td>
  </tr>
  <tr>
    <td colspan="5" align="center">
<table width="100%"  height="100%" border="0" bgcolor="#FFCC99" class="input">
  <tr>
    <td height="10"> <jsp:include page="head.jsp" /></td>
  </tr>
  <tr>
    <td height="10" colspan="3" bgcolor="#999999">&nbsp;</td>
  </tr>
  <tr>
    <td  colspan="3" align="center" valign="top">

    <table width="30%" border="1" class="font">
      <tr>
      <td height="38" colspan="2" align="center" valign="middle">您的个人资料</td>
    </tr>
   
    <tr>
      <td width="36%" align="right" valign="middle">个人ID号：&nbsp;</td>
      <td width="64%" valign="middle"><s:property value="user.userid"/></td>
    </tr>
    
    <tr>
      <td align="right" valign="middle">登录名：&nbsp;</td>
      <td valign="middle"><s:property value="user.name"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">密 &nbsp;码：&nbsp;</td>
      <td valign="middle"><s:property value="user.password"/></td>
    </tr>
    
    <tr>
      <td align="right" valign="middle">真实姓名：&nbsp;</td>
      <td valign="middle"><s:property value="user.truename"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">性 &nbsp;别：&nbsp;</td>
      <td valign="middle"><s:property value="user.sex"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">出生日期：&nbsp;</td>
      <td valign="middle"><s:property value="user.birth"/></td>
      
    </tr>
    <tr>
      <td align="right" valign="middle">民 &nbsp;族：&nbsp;</td>
      <td valign="middle"><s:property value="user.nation"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">学 &nbsp;历：&nbsp;</td>
      <td valign="middle"><s:property value="user.edu"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">职 &nbsp;称：&nbsp;</td>
      <td valign="middle"><s:property value="user.work"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">电 &nbsp;话：&nbsp;</td>
      <td valign="middle"><s:property value="user.phone"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">住 &nbsp;址：&nbsp;</td>
      <td valign="middle"><s:property value="user.place"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">邮 &nbsp;箱：&nbsp;</td>
      <td valign="middle"><s:property value="user.email"/></td>
    </tr>

    </table>
    </td>
  </tr>
</table>
  </td>
  </tr>
  <tr>
    <td height="10" colspan="6" align="center" bgcolor="#9999FF"><jsp:include page="../tail.jsp" /></td>
  </tr>
</table>
<s:debug></s:debug>
  </body>
</html>

