<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  <table width="100%" border="0" bgcolor="#FFCC99">
  <tr>
    <td width="30%" height="10" align="right"><a href="friends/friends_info">好友信息信息</a></td>
    <td width="30%" align="center"><a href="Friends/friends_add.jsp">添加联系人</a></td>
    <td ><a href="friends/friends_showEdit">修改联系人</a></td>
  </tr>
  </table>

