<%@ page contentType="text/html; charset=utf-8"%>
 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>

     	<%! String greeting = "Hello, We Are Boae.";
          String tagline = "hello, We are Boae.";%>

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
    	<img src="image/sad.jpg" class="sad-img" alt="..." width="100%;" height="80%;">
    	<div class="card-img-overlay">
    	<h5 class="card-title">어쩔티비</h5>
    	<p class="card-text">출처: 몰라</p>
  		</div>
  	</div>

	<div class="list-group">
      	<a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
        <a href="#" class="list-group-item list-group-item-action">강보미 존 예</a>
    	</div>

