<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
    <head>
     	<base href="<%=basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">   
		<script src="JS/check.js"></script>
        <title><s:text name="个人信息管理系统"/></title>
    </head>
    <body bgcolor="#CCCCFF">
        
            <table align="center" width="100%">
                <tr>
                    <td align="center" width="50%">
                        <h1>个人信息管理系统</h1>
                    </td>
                </tr>
                <tr>
                    <td >
                        <hr align="center" width="100%" size="20" color="green"/>
                    </td>
                </tr>
                <tr>
                    <td>
                    <s:form id="personal" name="login" action="user_login" namespace="/user" method="post">
                        <table width="250" border="5" align="center" bgcolor="#99aadd">
                            <tr>
                                <td>
                                    <s:textfield id="name" name="user.name" label="登 录 名" cssClass="textarea"  size="21"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <s:password id="password" name="user.password" label="登录密码" cssClass="textarea" size="22"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" value="确定" onclick="return check_personal(personal)"/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" value="清空"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <s:a href="Login/user_register.jsp" cssClass="shanshuo">注册</s:a>
                                </td>
                            </tr>
                        </table>
                        </s:form>
                    </td>
                </tr>
            </table>
        <s:debug></s:debug>
    </body>
</html>
