<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">

<title>메일 보내기 TEST</title>
<style>
table{width: 450px;
	margin : auto;
	}
	h1{
		text-align: center;
	}
	td{
	border : 1px dotted gray;}


</style>

 
</head>
<body>
<div id="wrap">
<!-- 헤더가 들어가는 곳 -->
<jsp:include page="../inc/top.jsp" />
<!-- 헤더가 들어가는 곳 -->

<!-- 본문 들어가는 곳 -->
<!-- 서브페이지 메인이미지 -->
<div id="sub_img"></div>
<!-- 서브페이지 메인이미지 -->
<!-- 왼쪽메뉴 -->

<!-- 왼쪽메뉴 -->
<!-- 내용 -->
<form action="../mailSend" method="post">
<h1>Email 보내기</h1>
<table>
	<tr><td>보내는 메일 : </td><td><input type="text" name="sender"></td></tr>
	<tr><td>받는 메일 : </td><td><input type="text" name="receiver"></td></tr>
	<tr><td>제목 : </td><td><input type="text" name="subject"></td></tr>
	<Tr>
		<td>내용 : </td>
		<td><textarea name="content" cols=40 rows=20></textarea></td></Tr>
		<tr ><td align = center colspan=2><input type = "submit" value="보내기" class = "submit"></td></tr>
</table>
</form>

<!-- 내용 -->
<!-- 본문 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>



