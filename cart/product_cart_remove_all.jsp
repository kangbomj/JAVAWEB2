<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product_cart.jsp");
		return;
	}
	
	session.invalidate();
	response.sendRedirect("product_cart.jsp");
%>

<!--cart id는 전체삭제, 
product.getProductId는 개별적으로 삭제하는 것
return : 현재 페이지의 실행중단-->

<!--
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product_cart.jsp");
		return;
	}

	session.invalidate(); // 세션 초기화
	
	response.sendRedirect("product_cart.jsp");
-->