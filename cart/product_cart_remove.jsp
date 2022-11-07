<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<!--
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("../product_detail.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
	}

	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
	Product goodsQnt = new Product();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("product_cart.jsp");
-->

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product_cart.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
	}

	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
	Product goodsQnt = new Product();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("product_cart.jsp");
%>


<!--session.getAttribute(String id = request.getParameter("id")); 이거아님 걍 내가 막 작성한거
46번째 줄 getAttribute 을 session 에 저장된 속성반환하는거임. -->