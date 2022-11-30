<%@ page contentType = "text/html;charset=utf-8" %>
<!--로그인 인증(login.jsp)에 실패 시 강제 이동-->
<%
	response.sendRedirect("login.jsp?error=1");
%>