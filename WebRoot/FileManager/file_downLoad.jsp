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
    <td align="center" height="10"> <jsp:include page="head.jsp" /></td>
  </tr>
  <tr>
    <td height="10" colspan="3" bgcolor="#999999">&nbsp;</td>
  </tr>
  <tr>
    <td  colspan="3" align="center" valign="top">
<s:if test="al.size>0">
<table border="5"  bgcolor="#95BDFF" width="80%" align="center">
  <tr>
    <th height="30">文件标题</th>
    <th height="30">文件名字</th>
    <th height="30">文件类型</th>
    <th height="30">文件大小</th>
    <th height="30">上传时间</th>
    <th height="30">下载</th>
    <th height="30">删除</th>
  </tr>
  <s:iterator value="al"  var="al">	
  <tr>
    <s:url var="downLoad" value="files/files_downLoad" > 
  		 <s:param name="file.name" value="#al.name"></s:param>  
  		 <s:param name="file.filePath" value="#al.filePath"></s:param>
    </s:url>
    <s:url var="delete" value="files/files_delete" > 
  		 <s:param name="file.fileid" value="#al.fileid"/>
  		 <s:param name="file.name" value="#al.name"></s:param>
  		 <s:param name="file.filePath" value="#al.filePath"></s:param>
  	</s:url>
  
    <td height="20" align="center"><s:property value="#al.title" /></td>
    <td align="center"><s:property value="#al.name" /></td>
    <td align="center"><s:property value="#al.contentType" /></td>
    <td align="center"><s:property value="#al.size" /></td>
    <td align="center"><s:property value="#al.upLoadTime" /></td>
    <td align="center"><s:a href="%{downLoad}">下载</s:a></td>
    <td align="center"><s:a href="%{delete}"  onclick="return window.confirm('确认删除此条信息？')">删除</s:a></td>

  </tr>
  </s:iterator>
  
</table>
<p>
<center>
        共<s:property value="intRowCount"/>记录&nbsp;&nbsp;
        第&nbsp;<s:property value="pageNow"/>&nbsp;页&nbsp;&nbsp;
         <s:url var="url_pre" value="files/files_showDownLoad">   
         <s:param name="pageNow" value="pageNow-1"></s:param>  
     </s:url>   
  
     <s:url var="url_next" value="files/files_showDownLoad">   
         <s:param name="pageNow" value="pageNow+1"></s:param>  
     </s:url>   
     <s:iterator value="al" status="status">   
        <s:url var="url" value="files/files_showDownLoad">   
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
</s:if><s:else>列表为空.&nbsp;&nbsp;<a href="FileManager/file_upLoad.jsp" class="word_orange">上传文件</a></s:else>
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


