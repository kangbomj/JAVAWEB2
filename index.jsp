<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%
    HelloWorld h = new HelloWorld();
%>
<html>
<body>
    메세지는 = <%=h.hello() %> 입니다.
</body>	
</html>