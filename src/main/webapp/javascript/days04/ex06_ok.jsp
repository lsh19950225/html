<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- http://localhost/webPro/javascript/days04/ex06_ok.jsp ?
subject=kor

<%
	// 스크립트 3가지 요소 중에 "스크립트릿","표현식"
	// 자바 코딩
	// JSP에 내장된 9가지 객체 중 "request 객체"
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
입력한 아이디 : request.getParameter("id");
입력한 비밀번호 : request.getParameter("passwd");
 --%>
 

<% 
	// jsp 스크립트 요소 : 스크립트릿, 표현식
	String subject = request.getParameter("subject");
%>
> 전송된 과목 : <%= subject %><br>
<br />
<input type="radio" name="subject" value="kor"><label for="">국어</label></input>
<input type="radio" name="subject" value="eng"><label for="">영어</label></input>
<input type="radio" name="subject" value="mat"><label for="">수학</label></input>
<input type="radio" name="subject" value="pe"><label for="">체육</label></input>
<br>


<!-- BOM : window / document / history -->
<!-- 뒤로가세요. -->
<a href="javascript:history.back()">뒤로가기</a>
<br />
<!-- BOM -->
<a href="javascript:location.href='ex06_02.html'">뒤로가기</a>

<hr>
<select name="selSubject" id="selSubject">
	<option value="">선택</option>
	<option value="kor">국</option>
	<option value="eng">영</option>
	<option value="mat">수</option>
	<option value="pe">체</option>
</select>

<script>
	let s = "<%= subject %>";
	
	$("#selSubject").val("<%= subject %>");
	
	$("#selSubject").find(`[value=\${s}]`).prop("selected", true);
	
	document.querySelector(`select[name=selSubject][value=\${s}]`).setAttribute("selected","true");

	<%-- JSP ${ EL 표현언어 } // `${변수}` : x / \${s} : o --%>
	document.querySelector(`input[name=subject][value=\${s}]`).checked = true;
	
	/*
	let subject = "<%= subject %>";
	// 밑과 동일
	document.querySelector("input[name=subject][value=<%= subject %>]").checked = true;
	*/
	
	/*
	const rdbs = document.querySelectorAll("[name=subject]");
	// alert(rdbs.length);
	for (var i = 0; i < rdbs.length; i++) {
		if(rdbs[i].value == subject){
			rdbs[i].setAttribute("checked","checked");
			break;
		} // if
	} // for
	*/
</script>

</body>
</html>