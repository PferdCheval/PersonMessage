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
    <script language="javascript"></script>
    <script src="JS/check.js"></script>
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
<s:form id="friend" action="friends_add" namespace="/friends" method="post">
填写好友信息
<table width="25%" border="1" align="center" class="font">
  
    <tr>
      <td align="center"><s:textfield id="name" name="friend.name" label="姓   名"  cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textfield id="phone" name="friend.phone" label="电  话" cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textfield id="email" name="friend.email" label="邮  箱" cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textfield id="workplace" name="friend.workplace" label="工作单位" cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textfield id="place" name="friend.place" label="家庭住址" cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textfield id="QQ" name="friend.QQ" label="Q  Q" cssClass="input"/></td>
    </tr>
    <tr>
      <td colspan="2" align="center" class="font" >
     	 <input type="submit" value="确定" onclick="return check_friend(friend);" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/>
     	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="返回" onclick="location.href='javascript:history.go(-1);'"/>
      </td>
    </tr>
    
</table>
</s:form>
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

