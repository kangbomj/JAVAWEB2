<%@ page contentType="text/html; charset=utf-8"%>
 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>

            <%! String greeting = "KANGBOMJ Shopping Mall";
          String tagline = "Welcome to Web Market!";%>
        <!--상단 페이지: 쇼핑몰 메인화면 문자열 홍길동님 하단페이지 :확인 ppt3 (9page)-->
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">
                    <%=greeting%>
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
    	<img src="image/cc.jpg" class="bag-img" alt="..." width="500px;" height="800px;">
    	<div class="card-img-overlay">
    	<h5 class="card-title">어쩔티비</h5>
    	<p class="card-text">출처 : 구찌</p>
  		</div>
  	</div>

	<div class="list-group">
      	<a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        	지포스 3060 시리즈
      	</a>
      	<a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
      	<a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        	지포스 3060 시리즈
      	</a>
      	<a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        	지포스 3060 시리즈
      	</a>
      	<a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
    	</div>

