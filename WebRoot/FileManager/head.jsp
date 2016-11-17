<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  <table width="100%" border="0" bgcolor="#FFCC99">
  <tr>
    <td width="30%" height="10" align="right"><a href="files/files_list">文件列表</a></td>
    <td width="30%" align="center"><a href="FileManager/file_upLoad.jsp">文件上传</a></td>
    <td ><a href="files/files_showDownLoad">选择下载</a></td>
  </tr>
  </table>

