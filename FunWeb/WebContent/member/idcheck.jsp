<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function ok(){
	//join.jsp페이지 id.value=idcheck.jsp 페이지 fid.value
	//window 내장객체 변수 opener == join.jsp 창을 open 페이지
	opener.document.fr.id.value=document.wfr.fid.value;
	//창닫기
	window.close();
}



</script>
</head>
<body>
<h1>member/idcheck.jsp</h1>
<%
//member/idcheck.jsp
// String id = fid 파라미터 가져와서 변수에 저장
String id = request.getParameter("fid");
//MemberDAO mdao 객체 생성
MemberDAO mdao = new MemberDAO();
//int check= idcheck(id) 메서드 호출
int check=mdao.idCheck(id);
//check==1 "아이디중복"
if(check==1){
	out.println("아이디중복");
}else if(check==0){
	out.println("아이디사용가능");
	%>
	<input type="button" value="아이디 사용" onclick="ok()">
	<%
//check==0 "아이디사용가능"
}
%>
<form action="idcheck.jsp" name="wfr" method="get">
아이디:<input type="text" name="fid" value="<%=id %>">
<input type="submit" value="아이디중복확인">
</form>
</body>
</html>