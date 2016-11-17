<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<table width="100%" border="0">
  <tr>
    <td height="10" align="center" bgcolor="#FFCC33" class="font"><a href="user/personal_info">个人信息管理</a></td>
    <td align="center" bgcolor="#FFCC33" class="font"><a href="friends/friends_info">通讯录管理</a></td>
    <td align="center" bgcolor="#FFCC33" class="font"><a href="dates/dates_info">日程安排管理</a></td>
    <td align="center" bgcolor="#FFCC33" class="font"><a href="files/files_list">个人文件管理</a></td>
    <td align="center" bgcolor="#FFCC33" class="font"><a href="user/user_logout">退出系统</a></td>
  </tr>
</table>
