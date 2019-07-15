<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>member/loginPro.jsp</h1>
<%
//member/loginPro.jsp

// 한글처리
request.setCharacterEncoding("utf-8");
// id,pass 파라미터 가져와서 변수에 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
// MemberDAO mdao 객체 생성
MemberDAO mdao = new MemberDAO();
// userCheck(함수처리할때 필요한 id,pass 가져가기) 메서드호출
int check=mdao.userCheck(id, pass);
// check==1 아이디 비밀번호 일치 세션값생성 "id",id main/main.jsp 이동
if(check==1){
	session.setAttribute("id", id);
	response.sendRedirect("../main/main.jsp");
	
// check==0 "비밀번호 틀림" 뒤로이동
}else if(check==0){
	%>
	<script type="text/javascript">
	alert("비밀번호 틀림");
	history.back();
	</script>
	<%
// check==-1 "아이디없음" 뒤로이동
}else{
	%>
	<script type="text/javascript">
	alert("아이디없음");
	history.back();
	</script>
	<%
}

%>

</body>
</html>