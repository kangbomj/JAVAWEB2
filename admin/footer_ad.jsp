<%@ page import="example.*" %>
<%@ page contentType="text/html; charset=utf-8"%>	
	<footer class="container">
		<p> <br> &copy; 쇼핑몰 대표 : 강 보미, 고유번호 : 20210961, 연락처 : kangbomj@naver.com <br>
            <%
    		ShopTime time = new ShopTime();
			%>    
        	오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>
