<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/4/25
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>

<%
    String ppath=request.getParameter("ppath");
    String file = "D:/image/"+ppath;
    FileInputStream in = new FileInputStream(new File(file));
    OutputStream o = response.getOutputStream();
    int l = 0;
    byte[] buffer = new byte[4096];
    while((l = in.read(buffer)) != -1){
        o.write(buffer,0,l);
    }
    o.flush();
    in.close();
    o.close();
%>