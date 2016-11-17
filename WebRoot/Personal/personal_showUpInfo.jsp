<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
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
	
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
	  <script language="javascript">
			        function birth()
			        {
						var year=document.getElementById('year').value;
						var month=document.getElementById('month').value;
						if(month<10) month="0"+month;
						var date=document.getElementById('date').value;
						if(date<10) date="0"+date;
						document.getElementById('user.birth').value=year+"-"+month+"-"+date;
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
    <td colspan="3" align="center" valign="top">
<s:form id="personal" method="post" action="personal_upInfo.action" namespace="/user" validate="true" theme="simple">
    <table width="400" border="1" class="font">
      <tr>
      <td height="38" colspan="2" align="center" valign="middle">您的个人资料</td>
    </tr>
    <tr>
      <td width="20%" align="right" valign="middle">个人ID号：&nbsp;</td>
      <td width="70%" valign="middle"><s:property value="user.userid"/></td>
    </tr>
    <tr>
      <td align="right" valign="middle">登录名：&nbsp;</td>
      <td valign="middle"><s:property value="user.name"/></td>
    </tr>
    
    <tr>
      <td align="right" valign="middle">真实姓名：&nbsp;</td>
      <td valign="middle"><input id="truename" name="user.truename" type="text" class="textarea" value="<s:property value="user.truename"/>"/><span class="red"><s:fielderror fieldName="user.truename"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">性 &nbsp;别：&nbsp;</td>
      <td valign="middle">
       <input name="user.sex" type="radio" value="男" <s:if test ='user.sex=="男"'>checked="checked"</s:if> />男
       <input name="user.sex" type="radio" value="女" <s:if test ='user.sex=="女"'>checked="checked"</s:if> />女
      </td>
    </tr>
    <tr>
<td height="27" align="right" valign="middle">出生日期：&nbsp;</td>
	<s:set var="year" value="user.birth.substring(0,4)" />
	<s:set var="month" value="user.birth.substring(5,7)" />
	<s:set var="date" value="user.birth.substring(8,10)" />
      <td valign="middle">
      <select  id="year" class="textarea">
        <s:iterator value="new int[115]" status="i"> <s:set var="year1" value="#i.index+1900"/> 
        <option value="<s:property value="#year1"/>" <s:if test ='#year==#year1'>selected="selected"</s:if>><s:property value="#year1"/></option>
       </s:iterator>
      </select>   
       年 
       <select  id="month" class="textarea">
        <s:iterator value="new int[12]" status="i"> <s:set var="month1" value="#i.index+1"/>
        <option value="<s:property value="#month1"/>" <s:if test ='#month==#month1'>selected="selected"</s:if>><s:property value="#month1"/></option>
       </s:iterator>
      </select>
      月
      <select id="date" class="textarea">
        <s:iterator value="new int[31]" status="i"> <s:set var="date1" value="#i.index+1"/>
        <option value="<s:property value="#date1"/>" <s:if test ='#date==#date1'>selected="selected"</s:if>><s:property value="#date1"/></option>
       </s:iterator>
      </select>
      <input type="hidden" id="oldBirth" value="<s:property value="user.birth"/>">
      <input type="hidden" name="user.birth" id="user.birth">
      日</td>
    </tr>
    <tr>
      <td align="right" valign="middle">民 &nbsp;族：&nbsp;</td>
      <td valign="middle"><input id="nation" name="user.nation" type="text" class="textarea" value="<s:property value="user.nation"/>"/><span class="red"><s:fielderror fieldName="user.nation"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">学 &nbsp;历：&nbsp;</td>
      <td valign="middle">
      	  <select name="user.edu" class="textarea">
        <option value="博士" <s:if test ='user.edu=="博士"'>selected="selected"</s:if>>博士</option>
        <option value="硕士" <s:if test ='user.edu=="硕士"'>selected="selected"</s:if>>硕士</option>
        <option value="本科" <s:if test ='user.edu=="本科"'>selected="selected"</s:if>>本科</option>
        <option value="大专" <s:if test ='user.edu=="大专"'>selected="selected"</s:if>>大专</option>
        <option value="高中" <s:if test ='user.edu=="高中"'>selected="selected"</s:if>>高中</option>
        <option value="初中以下" <s:if test ='user.edu=="初中以下"'>selected="selected"</s:if>>初中以下</option>
      </select>
      
      </td>
    </tr>
    <tr>
      <td align="right" valign="middle">职 &nbsp;称：&nbsp;</td>
      <td valign="middle"><input id="work" name="user.work" type="text" class="textarea" value="<s:property value="user.work"/>"/><span class="red"><s:fielderror fieldName="user.work"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">电 &nbsp;话：&nbsp;</td>
     <td valign="middle"><input id="phone" name="user.phone" type="text" class="textarea" value="<s:property value="user.phone"/>"/><span class="red"><s:fielderror fieldName="user.phone"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">住 &nbsp;址：&nbsp;</td>
      <td valign="middle"><input id="place" name="user.place" type="text" class="textarea" value="<s:property value="user.place"/>"/><span class="red"><s:fielderror fieldName="user.place"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">邮 &nbsp;箱：&nbsp;</td>
      <td valign="middle"><input id="email" name="user.email" type="text" class="textarea" value="<s:property value="user.email"/>"/><span class="red"><s:fielderror fieldName="user.email"/></span></td>
    </tr>
   <tr>
      <td height="46" colspan="2" align="center" valign="middle"><input type="submit" value="保存" onclick="birth();return check_personalUp(personal)"/>
        &nbsp;
        <input type="reset"  value="取消" />
        &nbsp;
        <input type="button" value="返回" onclick="location.href='javascript:history.go(-1);'"/></td></tr>

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

