<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! String greeting = "Hello, We Are Boae.";
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
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">Wolchang Ring</h5>
                    <p class="card-text">출처 : 강보미</p>
                    </div>
                    </div>
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
				<p><%=product.getDescription()%> <!-- 상품 정보 -->
				<p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
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
                    MoraSsiburiSsatno .
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
         <a href="#" class="list-group-item list-group-item-action">보미가 애정하는</a>
        <a href="#" class="list-group-item list-group-item-action">Wolchang Ring.</a>
        <a href="#" class="list-group-item list-group-item-action">Book Almond.</a>
        <a href="#" class="list-group-item list-group-item-action">Lenovo Notebook.</a>
        <a href="#" class="list-group-item list-group-item-action">Apple Ipad.</a>
       </div>
