<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- directive.include : 다른 페이지 포함시킬때 사용되는 지시어. <%@include file=""...%>. 2개의 jsp 페이지를 하나의 서블릿으로 생성. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어 예제</title>
</head>
<body>
   <% String msg = "includedirectiveex1.jsp 페이지의 msg 변수"; %>
   <h1> includedirectiveex1.jsp 입니다.</h1>
   <%@ include file = "includedirectiveex2.jsp" %>
   <h2>include Directive(지시어)를 이용하여 다른 페이지의 내용을 포함할 수 있습니다. 2개의 jsp는 하나의 서블릿으로 변환되므로 변수의 공유가 가능합니다.</h2>
</body>
</html>