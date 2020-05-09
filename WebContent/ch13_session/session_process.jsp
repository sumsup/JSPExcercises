<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("passwd");

    session.setAttribute("userID", id);
    session.setAttribute("userPW", pw);

    response.sendRedirect("welcome.jsp");
%>