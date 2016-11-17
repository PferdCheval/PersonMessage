<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
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
  
  <body>
 
 <s:form id="personal" action="user_register" namespace="/user" method="post" validate="true" theme="simple" >
  <table width="400" border="1" align="center" bgcolor="#AABBCCDD">
    <tr>
      <td height="38" colspan="2" align="center" valign="middle">请填写以下信息</td>
    </tr>
    <tr>
      <td width="20%" align="right" valign="middle">登录名：&nbsp;</td>
      <td width="70%" valign="middle"><s:textfield id="name" name="user.name" cssClass="textarea" /><span class="red"><s:fielderror fieldName="user.name"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">密 &nbsp;码：&nbsp;</td>
      <td valign="middle"><s:password id="password" name="user.password" cssClass="textarea" size="22"/><span class="red"><s:fielderror fieldName="user.password" /></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">重复密码：&nbsp;</td>
      <td valign="middle"><s:password id="confirmPassword" name="confirmPassword" cssClass="textarea" size="22"/><span class="red"><s:actionerror/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">真实姓名：&nbsp;</td>
      <td valign="middle"><s:textfield id="truename" name="user.truename" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.truename"/></span></td>
    </tr>
    <tr>
      <td height="28" align="right" valign="middle">性 &nbsp;别：&nbsp;</td>
      <td valign="middle">
        
          <input name="user.sex" type="radio" value="男" checked="checked" />
          男

          <input name="user.sex" type="radio" value="女" />
          女      </td>
    </tr>
    

	
    <tr>
      <td height="27" align="right" valign="middle">出生日期：&nbsp;</td>
      <td valign="middle">
	  <select  id="year" class="textarea">
        <s:iterator value="new int[115]" status="i"> <s:set var="year" value="#i.index+1900"/> 
        <option value="<s:property value="#year"/>"><s:property value="#year"/></option>
       </s:iterator>
      </select>   
       年 
       <select  id="month" class="textarea">
        <s:iterator value="new int[12]" status="i"> <s:set var="month" value="#i.index+1"/>
        <option value="<s:property value="#month"/>"><s:property value="#month"/></option>
       </s:iterator>
      </select>
      月
      <select id="date" class="textarea">
        <s:iterator value="new int[31]" status="i"> <s:set var="date" value="#i.index+1"/>
        <option value="<s:property value="#date"/>"><s:property value="#date"/></option>
       </s:iterator>
      </select>
      <input type="hidden" name="user.birth" id="user.birth">
      日</td>
      
    </tr>
    <tr>
      <td align="right" valign="middle">民 &nbsp;族：&nbsp;</td>
      <td valign="middle"><s:textfield id="nation" name="user.nation" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.nation"/></span></td>
    </tr>
    <tr>
      <td height="39" align="right" valign="middle">学 &nbsp;历：&nbsp;</td>
      <td valign="middle">
	  <select name="user.edu" class="textarea">
        <option value="博士">博士</option>
        <option value="硕士">硕士</option>
        <option value="本科">本科</option>
        <option value="大专">大专</option>
        <option value="高中">高中</option>
        <option value="初中以下">初中以下</option>
      </select>      </td>
    </tr>
    <tr>
      <td align="right" valign="middle">职 &nbsp;称：&nbsp;</td>
      <td valign="middle"><s:textfield id="work" name="user.work" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.work"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">电 &nbsp;话：&nbsp;</td>
      <td valign="middle"><s:textfield id="phone" name="user.phone" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.phone"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">住 &nbsp;址：&nbsp;</td>
      <td valign="middle"><s:textfield id="place" name="user.place" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.place"/></span></td>
    </tr>
    <tr>
      <td align="right" valign="middle">邮 &nbsp;箱：&nbsp;</td>
      <td valign="middle"><s:textfield id="email" name="user.email" cssClass="textarea"/><span class="red"><s:fielderror fieldName="user.email"/></span></td>
    </tr>
    <tr>
      <td height="46" colspan="2" align="center" valign="middle"><s:submit value="提交" onclick="birth();return check_personal(personal)"/>
        &nbsp;
        <s:reset value="重置" />
        &nbsp;
        <input type="button" value="返回" onclick="location.href='javascript:history.go(-1);'"/></td></tr>
  </table>
</s:form>
<s:debug/>
  </body>
</html>
