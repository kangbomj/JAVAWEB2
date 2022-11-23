<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

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
		


	<div class="container">
		<div class="row" align="center">
            
            <%@ include file="db/db_conn.jsp"%>
	    <%
		    String sql = "select * from product"; // 조회
		    pstmt = conn.prepareStatement(sql); // 연결 생성
		    rs = pstmt.executeQuery(); // 쿼리 실행
		    while (rs.next()) { // 결과 ResultSet 객체 반복
	    %>

			<div class="col-md-4">
				<div class="card bg-dark text-white">
                    <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">Wolchang Ring</h5>
                    <p class="card-text">출처 : 강보미</p>
                    </div>
                    </div>
				    <h3><%=rs.getString("p_name")%></h3>
		            <p><%=rs.getString("p_description")%>
		            <p><%=rs.getString("p_UnitPrice")%>원
		            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
                    </div>


            <%
			} // 반복문 끝난 이후 db 연결 종료	
		        if (rs != null)
			        rs.close();
 		        if (pstmt != null)
 			        pstmt.close();
 		        if (conn != null)
			        conn.close();
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
