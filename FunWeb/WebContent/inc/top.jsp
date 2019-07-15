<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<%
		// 세션값 가져오기
		String id = (String) session.getAttribute("id");
		// 세션값이 없으면 login /join
		if (id == null) {
	%>
	<div id="login">
		<a href="../member/login.jsp">login</a> | <a href="../member/join.jsp">join</a>
	</div>
	<%
		} else{
	%>
	<div id="login">
		<%=id %>님| <a href="../member/update.jsp"> 정보수정 </a> | <a href="../member/logout.jsp">logout</a>
	</div>
	<%
	}
		//세션값이 있으면 kim님
	%>
	<div class="clear"></div>
	<!-- 로고들어가는 곳 -->
	<div id="logo">
		<img src="../images/logo.gif" width="265" height="62" alt="Fun Web">
	</div>
	<!-- 로고들어가는 곳 -->
	<nav id="top_menu">
		<ul>
			<li><a href="../main/main.jsp">HOME</a></li>
			<li><a href="../company/mailForm.jsp">Email</a></li>
			
			<li><a href="../center/notice.jsp">NOTICE BOARD</a></li>
			
		</ul>
	</nav>
</header>