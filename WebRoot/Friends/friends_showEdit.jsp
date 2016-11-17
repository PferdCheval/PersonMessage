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
  <s:if test="al.size>0">
  <tr>
    <td height="10" align="center" >
    
    <form action="friends/friends_showEdit">
    <table width="80%" border="0" align="center" >
  		<tr>
  			<td> 
  			 关键字：<input name="key" type="text" class="input"/>&nbsp;&nbsp;<input type="submit" value=" 查 询 " class="input"/>
  			</td>
  		</tr>
  	</table>
  </form> 
    
    </td>
  </tr>
  
  <tr>
    <td  colspan="3" align="center" valign="top">

<table width="80%" border="1" align="center" class="font">
  <tr>
    <td width="10%" height="29" align="center">姓名</td>
    <td width="15%" align="center">电话</td>
    <td width="16%" align="center">邮箱</td>
    <td width="15%" align="center">工作单位</td>
    <td width="15%" align="center">家庭住址</td>
    <td width="13%" align="center">QQ</td>
    <td width="8%" align="center">编辑</td>
    <td width="8%" align="center">删除</td>
  </tr>
  <s:iterator value="al"  var="al">	
    <s:url var="edit" value="friends/friends_showUp" > 
  		 <s:param name="friend.friendid" value="#al.friendid"></s:param>  
         <s:param name="friend.name" value="#al.name"></s:param>
         <s:param name="friend.phone" value="#al.phone"></s:param> 
         <s:param name="friend.email" value="#al.email"></s:param>
         <s:param name="friend.workplace" value="#al.workplace"></s:param> 
         <s:param name="friend.place" value="#al.place"></s:param> 
         <s:param name="friend.QQ" value="#al.QQ"></s:param>   
    </s:url>
    
    <s:url var="delete" value="friends/friends_delete" > 
  		 <s:param name="friend.friendid" value="#al.friendid"></s:param>
  	</s:url>
  <tr>
    <td height="20" align="center"><s:property value="#al.name" /></td>
    <td align="center"><s:property value="#al.phone" /></td>
    <td align="center"><s:property value="#al.email" /></td>
    <td align="center"><s:property value="#al.workplace" /></td>
    <td align="center"><s:property value="#al.place" /></td>
    <td align="center"><s:property value="#al.QQ" /></td>
    
    
    <td align="center"><s:a href="%{edit}">编辑</s:a></td>
    
    <td align="center"><s:a href="%{delete}" onclick="return window.confirm('确认删除此条信息？')">删除</s:a></td>
  </tr>
  </s:iterator>
  
</table>
<p>
<center>
                共 <s:property value="intRowCount"/> 记录&nbsp;&nbsp;第&nbsp;<s:property value="pageNow"/>&nbsp;页&nbsp;&nbsp;
     <s:url var="url_pre" value="friends/friends_showEdit">   
         <s:param name="pageNow" value="pageNow-1"/>
         <s:param name="key" value="key"/>
     </s:url>   
  
     <s:url var="url_next" value="friends/friends_showEdit">   
         <s:param name="pageNow" value="pageNow+1"/>
		 <s:param name="key" value="key"/>
     </s:url>   
     <s:iterator value="al" status="status">   
        <s:url var="url" value="friends/friends_showEdit">   
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
  </s:if><s:else><tr><td align="center" valign="top">列表为空！</td></tr></s:else>
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

