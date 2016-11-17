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
						document.getElementById('key').value=year+"-"+month+"-"+date;
					}
</script>
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
  <s:if test="al.size>0">
  <tr>
    <td height="10" align="center" >
    
<form action="dates/dates_showEdit">
    <table width="80%" border="0" align="center" >
  		<tr>
  			<td> 
 	日程时间：
  	  <select  id="year" class="input">
        <s:iterator value="new int[14]" status="i"> <s:set var="year" value="#i.index+2010"/> 
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
	日 
      <input type="hidden" name="key" id="key">
 &nbsp;&nbsp;<input type="submit"  value=" 查 询 "  onclick="time();" />
  			</td>
  		</tr>
  	</table>
</form> 
    
    </td>
  </tr>
  <tr>
    <td  colspan="3" align="center" valign="top">

<table width="77%" border="1" align="center" class="font">
  <tr>
    <td width="15%" height="29" align="center">时间</td>
    <td width="25%" align="center">事项</td>
    <td width="25%" align="center">备注</td>
    <td width="6%" align="center">编辑</td>
    <td width="6%" align="center">删除</td>
  </tr>
  <s:iterator value="al"  var="al">	
  <tr>
  
  	<s:url var="edit" value="dates/dates_showUp" > 
  		 <s:param name="date.dateid" value="#al.dateid"></s:param>  
         <s:param name="date.time" value="#al.time"></s:param>
         <s:param name="date.thing" value="#al.thing"></s:param> 
         <s:param name="date.note" value="#al.note"></s:param>
    </s:url>
    <s:url var="delete" value="dates/dates_delete" > 
  		 <s:param name="date.dateid" value="#al.dateid"/>
  	</s:url>
    <td height="20" align="center"><s:property value="#al.time" /></td>
    <td align="center"><s:property value="#al.thing" /></td>
    <td align="center"><s:property value="#al.note" /></td>
    <td align="center"><s:a href="%{edit}">编辑</s:a></td>
    <td align="center"><s:a href="%{delete}" onclick="return window.confirm('确认删除此条信息？')">删除</s:a></td>
	
  </tr>
  </s:iterator>
  
</table>
<p>
<center>
        共<s:property value="intRowCount"/>记录&nbsp;&nbsp;
        第&nbsp;<s:property value="pageNow"/>&nbsp;页&nbsp;&nbsp;
         <s:url var="url_pre" value="dates/dates_showEdit">   
         <s:param name="pageNow" value="pageNow-1"></s:param>  
     </s:url>   
  
     <s:url var="url_next" value="dates/dates_showEdit">   
         <s:param name="pageNow" value="pageNow+1"></s:param>  
     </s:url>   
     <s:iterator value="al" status="status">   
        <s:url var="url" value="dates/dates_showEdit">   
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
    </td>
  </tr>
   </s:if><s:else><tr><td align="center" valign="top">无日程安排！</td></tr></s:else>
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

