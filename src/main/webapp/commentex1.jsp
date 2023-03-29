<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%-- jsp 주석 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp에서 사용되는 주석 3가지</title>
<% String msg = "jsp주석 예제입니다."; %>
</head>
<body>
  <h1>jsp에서 사용되는 주석</h1>
  <ol>
     <li> jsp 주석 | &lt;%--jsp 주석 표현 --%&gt;</li>
     <%--jsp 주석 입니다. : jsp 페이지에서만 보여집니다.
           서블릿 변환시 제외되는 부분입니다. 변환된 서블릿 파일에서 보여지지 않습니다. 
     --%>
     <li>java 주석 | &lt;% //java 한줄 주석 표현 %&gt; <br>
                  <%  /* java 여러줄 주석입니다. 자바 주석은 서블릿이 컴파일 될 때 주석입니다.*/ %> </li>
     <li>html 주석 | &lt; !-- html 주석 표현 --&gt; </li>
     <!-- html 주석입니다. jsp 페이지나, 서블릿에서는 주석이 아닙니다. 브라우저의 소스보기에서 보여집니다.<%=msg%> -->
     <!-- 서블릿이 jsp파일을 java 파일로 만들어 준다는 말?ㅇㅇ // jsp 페이지는 뭐임? 지금 니가 보고있는 이게 jsp페이지임 -->
     <!--  now.jsp =>(서블릿 변환, jsp 주석처리) => now_jsp.java => (컴파일, java 주석처리) => now_jps.class => (실행, html 주석처리) => html-->
  </ol>
</body>
</html>