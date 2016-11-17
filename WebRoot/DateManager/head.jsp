<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  <table width="100%" border="0" bgcolor="#FFCC99">
  <tr>
    <td width="30%" height="10" align="right"><a href="dates/dates_info">查看日程</a></td>
    <td width="30%" align="center"><a href="DateManager/date_add.jsp">增加日程</a></td>
    <td ><a href="dates/dates_showEdit">修改日程</a></td>
  </tr>
  </table>

