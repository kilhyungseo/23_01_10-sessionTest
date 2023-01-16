<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String memberId = request.getParameter("memberId");
			String memberPw = request.getParameter("memberPw");
			
			if(memberId.equalsIgnoreCase("hyungso") && memberPw.equalsIgnoreCase("1234")){ // 조건이 참이면 로그인 성공
				//로그인 시킨다(로그인 상태로 전환)는 것은 세션에 아이디를 올리고 저장한다는 의미와 동일
				session.setAttribute("memberId", memberId);
				session.setAttribute("memberPw", memberPw);
				out.println(memberId + "님 로그인 성공하셨습니다.(세션 생성 성공!)");
			}else{
				out.println("로그인에 실패 하셨습니다(세션 생성 실패!!!!)");
			}
		%>
		<br>
		
		<a href="sessionTest.jsp">로그인 확인 페이지로 가기</a>
		
</body>
</html>