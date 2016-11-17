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
    <td height="168" colspan="5" align="center">
<table width="100%"  height="100%" border="0" bgcolor="#FFCC99" class="input">
  <tr>
    <td width="30%" height="15" align="right">修改个人信息</td>
    <td width="30%" align="center"><a href="user/personalInfo?user.name=<s:property value="#session.username"/>">查看个人信息</a></td>
    <td ><a href="user/personalUppassword?user.name=<s:property value="#session.username"/>">修改密码</a></td>
  </tr>
  <tr>
    <td height="10" colspan="3" bgcolor="#999999">&nbsp;</td>
  </tr>
  <tr>
    <td height="221" colspan="3" align="center" valign="top">
  <s:if test="flag=='info'">
    <table width="30%" border="1" class="font">
      <tr>
      <td height="38" colspan="2" align="center" valign="middle">您的个人资料</td>
    </tr>
    <s:iterator value="al" var="al"/>
    <tr>
      <td width="36%" align="right" valign="middle">登录名：&nbsp;</td>
      <td width="64%" valign="middle"><s:property value="#al.name"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">密 &nbsp;码：&nbsp;</td>
      <td valign="middle"><s:property value="#al.password"/></td>
    </tr>
    
    <tr>
      <td align="right" valign="middle">真实姓名：&nbsp;</td>
      <td valign="middle"><s:property value="#al.truename"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">性 &nbsp;别：&nbsp;</td>
      <td valign="middle"><s:property value="#al.sex"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">出生日期：&nbsp;</td>
      <td valign="middle"><s:property value="#al.birth"/></td>
      
    </tr>
    <tr>
      <td align="right" valign="middle">民 &nbsp;族：&nbsp;</td>
      <td valign="middle"><s:property value="#al.nation"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">学 &nbsp;历：&nbsp;</td>
      <td valign="middle"><s:property value="#al.edu"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">职 &nbsp;称：&nbsp;</td>
      <td valign="middle"><s:property value="#al.work"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">电 &nbsp;话：&nbsp;</td>
      <td valign="middle"><s:property value="#al.phone"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">住 &nbsp;址：&nbsp;</td>
      <td valign="middle"><s:property value="#al.place"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">邮 &nbsp;箱：&nbsp;</td>
      <td valign="middle"><s:property value="#al.email"/></td>
    </tr>

    </table>
</s:if>
 <s:if test="flag=='uppassword'">
<table width="30%" border="1" class="font">

    <tr>
      <td width="36%" align="right" valign="middle">原密码：&nbsp;</td>
      <td width="64%" valign="middle"><label>
        <input name="textfield" type="password" class="input" />
      </label></td>
    </tr>
    <tr>
      <td align="right" valign="middle">新密码：&nbsp;</td>
      <td valign="middle"><input name="textfield2" type="password" class="input" /></td>
    </tr>
    
    <tr>
      <td align="right" valign="middle">确认密码：&nbsp;</td>
      <td valign="middle"><input name="textfield3" type="password" class="input" /></td>
    </tr>
    <tr>
      <td height="37" colspan="2" align="center" valign="middle"><input type="reset" name="Submit" value="修改" />
        &nbsp;
        <input type="reset" name="Submit2" value="重置" />
        &nbsp;
        <input type="button" name="Submit3" value="返回" /></td></tr>
    </table>
</s:if>
    </td>
  </tr>
</table>
  </td>
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

