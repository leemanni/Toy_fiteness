<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보</h1>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String birthDate = request.getParameter("birthDate");
	
	if(birthDate.length() != 6 ){
		out.println("<script>");
		out.println("alert('생년월일을 다시 입력해주세요(6자리 예시 : 991103)')");
		out.println("location.href='fitnessMemInfo.jsp'");
		out.println("</script> ");
	}else if(Integer.parseInt(birthDate.charAt(3)+birthDate.charAt(4)+"") >12){
		out.println("<script>");
		out.println("alert('생년월일을 다시 입력해주세요')");
		out.println("location.href='fitnessMemInfo.jsp'");
		out.println("</script> ");
	}
	
	
	String period = request.getParameter("period");
	out.println("<script>");
	out.println("alert('회원가입을 축하합니다')");
	out.println("</script>  ");
	
	out.println( name + " 님 (" +age +", "+gender + ") 안녕하세요<br>");
	
	out.println(" 나의 잔여 개월수 : "+ period+"<br><br><br>");
	
	
	String [] searches = request.getParameterValues("search");
	try{
		out.println(name+"님 가입 루트<br>");
		for(int i = 0 ; i < searches.length ; i++){
		out.println(" - " + searches[i]+ "<br>");
		}
	}catch(NullPointerException e){
		out.println("미선택 ㅠㅠ <br>");
	}
	
	
	
%>
</body>
</html>