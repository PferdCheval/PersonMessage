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
<s:if test="al.size>0">
<table width="65%" border="1" align="center" class="font">
  <tr>
    <td width="15%" height="29" align="center">时间</td>
    <td width="25%" align="center">事项</td>
    <td width="25%" align="center">备注</td>
  </tr>
  <s:iterator value="al"  var="al">	
  <tr>
    <td height="20" align="center"><s:property value="#al.time" /></td>
    <td align="center"><s:property value="#al.thing" /></td>
    <td align="center"><s:property value="#al.note" /></td>

  </tr>
  </s:iterator>
  
</table>
<p>
<center>
        共<s:property value="intRowCount"/>记录&nbsp;&nbsp;
        第&nbsp;<s:property value="pageNow"/>&nbsp;页&nbsp;&nbsp;
         <s:url var="url_pre" value="dates/dates_info">   
         <s:param name="pageNow" value="pageNow-1"></s:param>  
     </s:url>   
  
     <s:url var="url_next" value="dates/dates_info">   
         <s:param name="pageNow" value="pageNow+1"></s:param>  
     </s:url>   
     <s:iterator value="al" status="status">   
        <s:url var="url" value="dates/dates_info">   
            <s:param name="pageNow" value="pageNow"/>   
        </s:url>   
     </s:iterator>  
     &nbsp;&nbsp;  
     <s:if test="pageNow==1">
    <s:a href="%{url_pre}">首页</s:a>
     </s:if>
     <s:else>
     <s:a href="%{url_pre}">上一页</s:a>
     </s:else>&nbsp;&nbsp;&nbsp;
     <s:if test="pageNow==k">
     <s:a href="%{url_next}">尾页</s:a>
       </s:if>
       <s:else>
       <s:a href="%{url_next}">下一页</s:a>
       </s:else>
</center>
</s:if><s:else>您还没有日程安排.&nbsp;&nbsp;<a href="DateManager/date_add.jsp" class="word_orange">添加日程</a></s:else>
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

