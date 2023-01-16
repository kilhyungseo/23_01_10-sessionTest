<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃 시키기</title>
</head>
<body>
		<%
		
			session.invalidate(); //세션의 모든 정보 삭제-> 로그아웃
		
			//String sessionId = (String)session.getAttribute("memberId");
		
			if(request.isRequestedSessionIdValid() == false){
				out.print("로그아웃 성공!");
			}else{
				out.print("로그아웃 실패!");
			}
		
		%>
		<br>
		<a href="sessionTest.jsp">로그인 확인 테스트</a>
</body>
</html>