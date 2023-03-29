<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<hr>
<h3>includedirectiveex2.jsp 입니다<br>
includedirectiveex1.jsp에 포함되는 페이지 입니다. <br>
두개의 페이지가 같은 서블릿으로 변경되므로 변수 공유가 가능합니다. <br>
msg : <%= msg %> <%--이거 때문에 하나의 java 파일로 생성됨. 그런데 이거 빼고 ex2에서 실행하면 그대로 페이지가 생성되긴함. java파일로 변환되는 건 실행하면서 서블릿을 생성하기 때문.  --%>
<!-- 그럼 ex2는 .java 파일이 생성되지 않는다는 말? -->
</h3>
<hr>
<%-- 스크립트 : 자바의 영역 => 자바 주석이 가능.
       -scriptlet : 변환되는 서블릿 소스의 _jspService 메서드의 자바소스로 생성됨. <% %>
       -표현식      : <%= 값(변수, 수식, 리턴값이 있는 함수)%> : 값을 웹화면에 출력. ;을 찍지 않음. 한줄 주석을 쓸 수 없음.
                    <%= '홍' /*주석*/ %> => 서블릿에서는 out.print('홍') 
       -선언문      : <%! .....%>  => 거의 사용하지 않음. 서블릿의 멤버변수로 선언됨. 차라리 자바소스에 추가하지 잘 쓰지 않음.
                    now.jsp => now_jsp.java 서블릿 생성--%>
       