<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%String path = request.getContextPath();%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script src="JS/check.js"></script>
    <title>My JSP 'main.jsp' starting page</title>
	
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
  </head>
  
  <body bgcolor="#CCCCFF">

<table  width="1100" height="100%" border="1" align="center">
  <tr>
    <td width="10%" rowspan="3" valign="top" ><img alt="你好" src="images/cc.gif" width="110"></td>
    <td width="90%" height="40" colspan="5" align="center" class="title">欢迎使用个人信息管理平台</td>
  </tr>
  <tr>
    <td height="10"><jsp:include page="../top.jsp" /></td>
  </tr>
  <tr>
    <td colspan="5" align="center">
<table width="100%"  height="100%" border="0" bgcolor="#FFCC99" class="input">
  <tr>
    <td height="10"><jsp:include page="head.jsp" /></td>
  </tr>
  <tr>
    <td height="10" colspan="3" bgcolor="#999999">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center" valign="top">
<s:form id="personal" method="post" action="personal_upPassword.action" namespace="/user" validate="true" theme="simple">
<table width="350" border="0" align="center" class="font">
     
    <tr>
      	<td width="20%">原 密 码：</td>
     	<td width="80%"><s:password id="oldPassword" name="oldPassword" cssClass="input"/><span class="red"><s:fielderror fieldName="oldPassword"/></span></td>
    </tr>
     
    <tr>
    	<td>新 密 码：</td>
      	<td ><s:password id="newPassword" name="newPassword" cssClass="input"/><span class="red"><s:fielderror fieldName="newPassword"/></span></td>
    </tr>
    <tr>
    	<td>确认密码：</td>
     	<td><s:password id="confirmPassword" name="confirmPassword"  cssClass="input"/><span class="red"><s:actionerror/></span></td>
    </tr>

    <tr>
      <td height="36" colspan="2" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit"  value="修改" onclick="return check_personalUppassword(personal);"/>&nbsp;&nbsp;
      <input type="reset"  value="重置" />&nbsp;&nbsp;
      <input type="button" value="返回" onclick="location.href='javascript:history.go(-1);'"/></td>
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

