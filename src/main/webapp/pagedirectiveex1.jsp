<%@page import="java.text.SimpleDateFormat, java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 지시어(directive).page : 현재페이지의 특징 설정, 속성을 이용하여 설정. jsp페이지가 컨테이너에게 필요한 메세지를 보내기 위한 태그
                                                       language, contentType, pageEncoding, 
                                                       import(import만 중복가능.)...-->
<%-- directive.taglib(taglibrary) : 커스텀 태그 사용시 설정되는 지시어 => jstl에서 설명 <%@taglib....%> --%>
<%-- page Directive : 속성을 이용하여 현재 페이지의 특징 설정 기능
                      <%@ page 속성1=속성값1, 속성2=속성값2,...%>
                      contentType : 반드시 기술. MIME 타입(text/html)으로 설정함.
                      import : 사용되는 클래스의 패키지의 이름 생략할 수 있도록 설정. 여러번 사용 가능.
                      isErrorPage = "true" : 현재 페이지가 오류 페이지?  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% Date today = new Date();
       SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
       %> <!-- ctrl+space bar => import -->
    현재일시 : <%= sf.format(today) %> <%--<%= %> 결과값 출력하는 jsp태그  --%> 
</body>
</html>