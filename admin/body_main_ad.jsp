<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<link rel="stylesheet" href="../CSS/body_main_css.css">

<%! String greeting = "Welcome, We are Gucci.";
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
        <div class="body_background">
    
		<div class="row" align="center">
            
        <%@ include file="../db/db_conn.jsp"%>
	    <%
		    String sql = "select * from product"; // 조회
		    pstmt = conn.prepareStatement(sql); // 연결 생성
		    rs = pstmt.executeQuery(); // 쿼리 실행
		    while (rs.next()) { // 결과 ResultSet 객체 반복
	    %>
            
            <div class="col-md-4">
				<div class="card">
                    <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="col-md-4-text">
				    <h3><%=rs.getString("p_name")%></h3>
		            <p><%=rs.getString("p_description")%>
		            <p><%=rs.getString("p_unitPrice")%>원
		            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
                    </div>
                    </div>
                </div>
<!--
			<div class="col-md-4">
				<div class="card bg-dark text-white">
                    <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">Wolchang Ring</h5>
                    <p class="card-text">출처 : 강보미</p>
                    </div>
                    </div>
                <div class="col-md-4-text">
				    <h3><%=rs.getString("p_name")%></h3>
		            <p><%=rs.getString("p_description")%>
		            <p><%=rs.getString("p_unitPrice")%>원
		            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
                    </div>
                </div>
-->
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
        </div><!--body_background--> 
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
       <img src="../image/guccimakeup.png" class="sad-img" alt="Almond" width="100%;" height="80%;">
       <div class="card-img-overlay">
       <h5 class="card-title">겁나 예뿌지</h5>
       <p class="card-text">출처: kangbomj</p>
        </div>
 
     </div>
        <br>

   <div class="list-group">
         <a href="#" class="list-group-item list-group-item-action">구찌 뷰티 만나보기</a>
        <a href="#" class="list-group-item list-group-item-action">펫 만나보기</a>
        <a href="#" class="list-group-item list-group-item-action">데코 및 라이프스타일 만나보기</a>
        <a href="#" class="list-group-item list-group-item-action">카드 만들기</a>
        <a href="#" class="list-group-item list-group-item-action">다른 구찌 서비스도 확인하기</a>
       </div>