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
	<script language="javascript">
			        function time()
			        {
						var year=document.getElementById('year').value;
						var month=document.getElementById('month').value;
						if(month<10) month="0"+month;
						var date=document.getElementById('date').value;
						if(date<10) date="0"+date;
						document.getElementById('date.time').value=year+"-"+month+"-"+date;
					}
	</script>
<script src="JS/check.js"></script>
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
<form id="dates" action="dates/dates_add" method="post">
<table width="30%" border="1" align="center" class="font">
  
    <tr>
      <td height="38" colspan="2" align="center" valign="middle">添加日程信息</td>
    </tr>
    <tr>
      <td width="20%"  height="30" align="left" valign="middle">行 期:</td>
      <td width="80%" valign="middle">
      <select  id="year" class="input">
        <s:iterator value="new int[10]" status="i"> <s:set var="year" value="#i.index+2014"/> 
        <option value="<s:property value="#year"/>"><s:property value="#year"/></option>
       </s:iterator>
      </select>   
       年 
       <select  id="month" class="input">
        <s:iterator value="new int[12]" status="i"> <s:set var="month" value="#i.index+1"/>
        <option value="<s:property value="#month"/>"><s:property value="#month"/></option>
       </s:iterator>
      </select>
      月
      <select id="date" class="input">
        <s:iterator value="new int[31]" status="i"> <s:set var="date" value="#i.index+1"/>
        <option value="<s:property value="#date"/>"><s:property value="#date"/></option>
       </s:iterator>
      </select>
      <input type="hidden" name="date.time" id="date.time">
      日</td>
    </tr>
    
    
    <tr>
      <td align="center"><s:textfield id="title" name="date.thing" label="标  题" size="24" cssClass="input"/></td>
    </tr>
    <tr>
      <td align="center"><s:textarea name="date.note" label="备  注" cssClass="textarea"/></td>
    </tr>

    <tr>
      <td colspan="2" align="center" class="font" >
     	 <input type="submit" value="确定" onclick="time();return check_dates(dates)"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/>
     	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="返回" onclick="location.href='javascript:history.go(-1);'"/>
      </td>
    </tr>
    
</table>
</form>
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

