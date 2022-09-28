<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
	%> 	
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                    </div>
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
				<p><%=product.getDescription()%> <!-- 상품 정보 -->
				<p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				} //반복문 끝
			%>
		</div>
		<hr>
	</div>
        
<!--여기부터 내가 작성한거-->
       <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">
                    Hello, We Are Boae.
                </h1>
            </div>
        </div>   
        <!--<div class="container">
            <div class="text-center">
                <h3>
                    <%=tagline%>
                </h3>
            </div>
            <hr>
        </div>-->
    <div class="card bg-dark text-white">
       <img src="image/Almond.jpg" class="sad-img" alt="Almond" width="100%;" height="80%;">
       <div class="card-img-overlay">
       <h5 class="card-title">겁나 예뿌지</h5>
       <p class="card-text">출처: kangbomj</p>
        </div>
     </div>

   <div class="list-group">
         <a href="#" class="list-group-item list-group-item-action">보애 : 보미가 애정하는 것</a>
        <a href="#" class="list-group-item list-group-item-action">박다영 짜증나 !</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
        <a href="#" class="list-group-item list-group-item-action">박다영 단 돈 5천원 !!!!</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 무려 5억원!!!!</a>
       </div>
