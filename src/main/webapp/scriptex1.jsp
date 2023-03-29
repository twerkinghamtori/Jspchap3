<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script 예제</title>
</head>
<body>
  <% //scriptlet => _jspService 메서드의 자바소스
     System.out.println("스크립트 예제"); //콘솔에 출력. n번 실행 -> n번 출력.
     String msg = "스크립트 예제";
     for(int i=1; i<=10; i++) {
  %>
  <%= i + ":" + msg %><br> <%-- 브라우저에 출력 --%>
  <%= i + ":" + this.msg1 %><br> <%-- ; 찍지 않음. --%>
  <%= ' '/*System.out.println("스크립트 예제")*/ %><br> <%-- println은 void니까 리턴값이 없어서 실행 오류. 표현식에 한줄 주석 사용 불가. --%>
  <%= getMsg() %><br>
  <% } %>
  <% //  String msg = "스크립트 예제"; %>
</body>
</html>
<%! //선언문
   String msg1 = "선언문으로 선언한 msg 변수"; //msg1 -> 지역변수x, 멤버변수o
   String getMsg() { //서블릿 클래스의 멤버 메서드
	   return msg1;
   }
%>
<%--
jsp 내장 객체 (8+1) : 모든 jsp 페이지에 존재하는 객체
-request : 요청 객체
-response : 응답 객체
-pageContext : 현재 페이지의 정보를 저장한 객체
-session : 클라이언트(브라우저)의 정보를 저장 (ex. login 정보 등), 브라우저 별로 각각의 세션을 열어줌(?)
-application : 웹어플리케이션(dynamic web project) 정보를 저장
-out : jsp writer 객체. 응답객체에 있는 출력 버퍼가 목적지인 출력스트림
-config : 서블릿의 환경변수를 저장하는 객체
-page : 현재페이지 객체 => 이게 this.

-exception : 예외 객체 => 모든페이지에 할당x, error페이지에서만 할당됨
 --%>